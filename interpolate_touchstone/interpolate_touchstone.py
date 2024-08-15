import os
import numpy as np
import skrf as rf
from scipy.interpolate import griddata, Rbf
import datetime

def parse_filename(filename):
    parts = filename.replace('BFU550A_', '').replace('_NF_SP.s2p', '').split('_')
    vce = float(parts[0].replace('V', '.'))
    ic = float(parts[1].replace('mA', ''))
    return vce, ic

def read_touchstone_files(folder):
    files = [f for f in os.listdir(folder) if f.endswith('.s2p')]
    data = {}
    for file in files:
        path = os.path.join(folder, file)
        network = rf.Network(path)
        vce, ic = parse_filename(file)
        data[(vce, ic)] = network
    return data

def interpolate_sparameters(data, vce_target, ic_target):
    vces = sorted(set(k[0] for k in data.keys()))
    ics = sorted(set(k[1] for k in data.keys()))
    
    freq = next(iter(data.values())).frequency.f
    sparams = np.array([data[(vce, ic)].s for vce in vces for ic in ics])
    #g_opts = np.array([data[(vce, ic)].g_opt for vce in vces for ic in ics])
    #nfmins = np.array([data[(vce, ic)].nfmin_db for vce in vces for ic in ics])
    #rns = np.array([data[(vce, ic)].rn for vce in vces for ic in ics])


    grid_vce, grid_ic = np.meshgrid(vces, ics, indexing='ij')
    points = np.column_stack((grid_vce.flatten(), grid_ic.flatten()))

    def interpolate(param_array):
        rbf = Rbf(points[:, 0], points[:, 1], param_array.flatten(), function='multiquadric', epsilon=2)
        return rbf(vce_target, ic_target).reshape(param_array.shape[1:])
    
    sparams_interpolated = np.empty(sparams[0].shape, dtype=np.complex128)
    #g_opt_interpolated = np.empty(g_opts[0].shape, dtype=np.complex128)
    #nfmin_interpolated = np.empty(nfmins[0].shape, dtype=np.complex128)
    #rn_interpolated = np.empty(rns[0].shape, dtype=np.complex128)

    for i in range(sparams.shape[1]):
        for j in range(sparams.shape[2]):
            for k in range(sparams.shape[3]):
                sparams_interpolated[i, j, k] = interpolate(sparams[:, i, j, k])
        #g_opt_interpolated[i] = interpolate(g_opts[:, i])
        #nfmin_interpolated[i] = interpolate(nfmins[:, i])
        #rn_interpolated[i] = interpolate(rns[:, i])
    
    return freq, sparams_interpolated#, g_opt_interpolated, nfmin_interpolated, rn_interpolated

#def create_touchstone_file(freq, sparams, g_opts, nfmins, rns, output_file, header):
def create_touchstone_file(freq, sparams, output_file, header):

    #network = rf.Network(frequency=rf.Frequency.from_f(freq, unit='hz'), s=sparams, noise=noise_params)
    frequencies = rf.Frequency.from_f(freq/1e6, unit='Mhz')
    network = rf.Network(frequency=frequencies, s=sparams)
    
    output_string = header
    output_string += network.write_touchstone(output_file, form='ma', format_spec_A="\t{:.6f}", format_spec_B="\t{:.2f}", return_string=True)
    output_file = open(output_file, 'w')
    output_file.write(output_string)
    output_file.close()




# Example usage:
folder = './files'
output_file = 'interpolated.s2p'
vce_target = 2.99
ic_target = 18.9

header = f"""! File generated using interpolate_touchstone.py
! Bias conditions:
! Vcc = {vce_target}V
! Ic = {ic_target}mA
!
! Date: {datetime.datetime.now()}
"""

data = read_touchstone_files(folder)
#freq, sparams_interpolated, g_opt_interpolated, nfmin_interpolated, rn_interpolated = interpolate_sparameters(data, vce_target, ic_target)
freq, sparams_interpolated = interpolate_sparameters(data, vce_target, ic_target)

#create_touchstone_file(freq, sparams_interpolated, g_opt_interpolated, nfmin_interpolated, rn_interpolated, output_file, header)
create_touchstone_file(freq, sparams_interpolated, output_file, header)
print(f'Interpolated Touchstone file created: {output_file}')
