<?xml version="1.0" encoding="UTF-8"?>
<MetaResultFile version="20211011" creator="FD-Control">
  <MetaGeometryFile filename="model.gex" lod="1"/>
  <SimulationProperties fieldname="e-field (f=1000) [1]" frequency="1000" encoded_unit="&amp;U:V^1.:m^-1" quantity="e-field" fieldtype="E-Field" fieldscaling="PEAK" dB_Amplitude="20"/>
  <ResultDataType vector="1" complex="1" timedomain="0" frequencymap="0"/>
  <SimulationDomain min="78.3839951 50 -5.19999981" max="147.167999 89 5.77800179"/>
  <PlotSettings Plot="4" ignore_symmetry="0" deformation="0" enforce_culling="0" integer_values="0" combine="CombineNone" default_arrow_type="ARROWS" default_scaling="NONE"/>
  <Source type="SOLVER"/>
  <SpecialMaterials>
    <Background type="NORMAL"/>
    <Material name="ME2_LNA(PCB1)/Copper" type="FIELDFREE"/>
    <Material name="ME2_LNA(PCB1)/PEC Sheets" type="FIELDFREE"/>
    <Material name="ME2_LNA(PCB1)/VIAS_MATERIAL" type="FIELDFREE"/>
    <Material name="PEC" type="FIELDFREE"/>
  </SpecialMaterials>
  <AuxGeometryFile/>
  <AuxResultFile/>
  <FieldFreeNodes/>
  <SurfaceFieldCoefficients/>
  <UnitCell/>
  <SubVolume/>
  <Units/>
  <ProjectUnits/>
  <TimeSampling/>
  <LocalAxes/>
  <MeshViewSettings/>
  <ResultGroups num_steps="1" transformation="1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1" process_mesh_group="0">
    <SharedDataWith/>
    <Frame index="0">
      <PortModeInfoFile/>
      <FieldResultFile filename="e-field (#0003)_1(1).m3t" type="m3t"/>
    </Frame>
  </ResultGroups>
  <AutoScale>
    <SmartScaling log_strength="1" log_anchor="0" log_anchor_type="0" db_range="40" phase="0"/>
  </AutoScale>
</MetaResultFile>
