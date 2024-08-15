'# MWS Version: Version 2024.1 - Oct 16 2023 - ACIS 33.0.1 -

'# length = mm
'# frequency = MHz
'# time = ns
'# frequency range: fmin = 0 fmax = 2000
'# created = '[VERSION]2024.1|33.0.1|20231016[/VERSION]


'@ use template: Model Extraction Broadband, PCB_3.cfg

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
'set the units
With Units
    .SetUnit "Length", "mm"
    .SetUnit "Frequency", "MHz"
    .SetUnit "Voltage", "V"
    .SetUnit "Resistance", "Ohm"
    .SetUnit "Inductance", "nH"
    .SetUnit "Temperature",  "degC"
    .SetUnit "Time", "ns"
    .SetUnit "Current", "A"
    .SetUnit "Conductance", "S"
    .SetUnit "Capacitance", "pF"
End With

ThermalSolver.AmbientTemperature "0"

'----------------------------------------------------------------------------

'set the frequency range
Solver.FrequencyRange "0", "2000"

'----------------------------------------------------------------------------

Plot.DrawBox False

' Background Material

With Background
     .ResetBackground
     .Type "Normal"
     .Epsilon "1.0"
     .Mue "1.0"
     .Rho "1.204"
     .ThermalType "Normal"
     .ThermalConductivity "0.026"
      .SpecificHeat "1005", "J/K/kg"

     .ApplyInAllDirections "False"
     .XminSpace 5e-3 * Units.GetGeometrySIToUnit()
     .XmaxSpace 5e-3 * Units.GetGeometrySIToUnit()
     .YminSpace 5e-3 * Units.GetGeometrySIToUnit()
     .YmaxSpace 5e-3 * Units.GetGeometrySIToUnit()
     .ZminSpace 5e-3 * Units.GetGeometrySIToUnit()
     .ZmaxSpace 5e-3 * Units.GetGeometrySIToUnit()
End With

' Boundary Conditions

With Boundary
     .Xmin "open"
     .Xmax "open"
     .Ymin "open"
     .Ymax "open"
     .Zmin "open"
     .Zmax "open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
End With

' Hex Mesh Settings (Only standard Hex Mesh, No more legacy mesh settings)
With MeshSettings
     .SetMeshType "Hex"
     .Set "Version", 0%
     .Set "RatioLimitGeometry", "25"
     .Set "EquilibrateOn", "1"
     .Set "Equilibrate", "1.9"
     .Set "EdgeRefinementOn", "0"
End With

' T Solver Settings
With Solver
	.SteadyStateLimit "-40"
	.NumberOfPulseWidths "200"
	.ActivatePowerLoss1DMonitor "False"
End With

' Tet Mesh Settings (Only standard Tet Mesh, No more leagacy mesh settings)
With MeshSettings
     .SetMeshType "Tet"
     .Set "VolMeshGradation", "3"
     .Set "SrfMeshGradation", "3"
     .Set "NormalTolerance", "60"
End With
With MeshSettings
     .SetMeshType "Unstr"
     .Set "OptimizeForPlanarStructures", "0"
End With

' F Solver Settings
With FDSolver
     .Reset
     .Method "Tetrahedral Mesh"
     .TDCompatibleMaterials "True"
     .CalcPowerLoss "False"
     .AddSampleInterval "max(Solver.GetFmax/3,Solver.GetFmin)", "max(Solver.GetFmax/3,Solver.GetFmin)", "1", "Single", "True"
     .AddSampleInterval "", "", "", "Automatic", "False"
End With

' EDA Import Defaults
With ImportEDADefaults
	.PortGeometry "FaceToPec"
	.LumpedElementGeometry "Face"
	.LumpedElementMonitors "False"
	.MeshDensityX "Medium"
	.MeshDensityY "Medium"
	.MeshLinesSubstrate "1"
	.Create
End With

'----------------------------------------------------------------------------

Dim sDefineAt As String
sDefineAt = "1000"
Dim sDefineAtName As String
sDefineAtName = "1000"
Dim sDefineAtToken As String
sDefineAtToken = "f="
Dim aFreq() As String
aFreq = Split(sDefineAt, ";")
Dim aNames() As String
aNames = Split(sDefineAtName, ";")

Dim nIndex As Integer
For nIndex = LBound(aFreq) To UBound(aFreq)

Dim zz_val As String
zz_val = aFreq (nIndex)
Dim zz_name As String
zz_name = sDefineAtToken & aNames (nIndex)

' Define E-Field Monitors
With Monitor
    .Reset
    .Name "e-field ("& zz_name &")"
    .Dimension "Volume"
    .Domain "Frequency"
    .FieldType "Efield"
    .MonitorValue  zz_val
    .Create
End With

Next

'----------------------------------------------------------------------------

With MeshSettings
     .SetMeshType "Hex"
     .Set "Version", 1%
End With

With Mesh
     .MeshType "PBA"
End With

'set the solver type
ChangeSolverType("HF Time Domain")

'----------------------------------------------------------------------------

'@ import odbpp file: C:\Users\bruno\Desktop\ME2_LNA_CPWG\Project Outputs for ME2_LNA\ME2_LNA.tgz

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With LayoutDB
     .Reset 
     .SourceFileName "C:\Users\bruno\Desktop\ME2_LNA_CPWG\Project Outputs for ME2_LNA\ME2_LNA.tgz" 
     .LdbFileName "*ME2_LNA.ldb" 
     .PcbType "odbpp" 
     .KeepSynchronized "True" 
     .CreateDB 
     .LoadDB 
End With

'@ change solver type

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
ChangeSolverType "HF Frequency Domain"

'@ define frequency domain solver parameters

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "False" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "True" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "True" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "False" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "max(Solver.GetFmax/3,Solver.GetFmin)", "max(Solver.GetFmax/3,Solver.GetFmin)", "1", "Single", "True" 
     .AddSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

