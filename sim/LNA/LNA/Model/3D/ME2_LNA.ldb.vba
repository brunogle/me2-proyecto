#-> section

With SAT
    .Reset
    .FileName "*ME2_LNA.ldb.sab"
    .Version "9.0"
    .ScaleToUnit True
    .ImportToActiveCoordinateSystem True
    .Curves True
    .Wires True
    .MergeFaces False
    .SubProjectName3D "PCB_UID_110173_repl_token"
    .SubProjectScaleFactor 2.54e-05
    .Read
    End With


#-> section

Curve.NewCurve "PCB_UID_110173_UTR_PICK"

#-> section

Mesh.StartSubProjectAdd

#-> section

With Material
   .Reset
   .Name "Copper"
   .Folder "PCB_UID_110173_UTR"
   .Colour 0.703, 0.703, 0
   .Wireframe False
   .Transparency 0
    .FrqType "static"
    .Type "Normal"
    .SetMaterialUnit "Hz", "mm"
    .Epsilon "1"
    .Mu "1"
    .Kappa "5.8e+07"
    .TanD "0.0"
    .TanDFreq "0.0"
    .TanDGiven "False"
    .TanDModel "ConstTanD"
    .KappaM "0"
    .TanDM "0.0"
    .TanDMFreq "0.0"
    .TanDMGiven "False"
    .TanDMModel "ConstTanD"
    .DispModelEps "None"
    .DispModelMu "None"
    .DispersiveFittingSchemeEps "Nth Order"
    .DispersiveFittingSchemeMu "Nth Order"
    .UseGeneralDispersionEps "False"
    .UseGeneralDispersionMu "False"
    .FrqType "all"
    .Type "Lossy metal"
    .SetMaterialUnit "GHz", "mm"
    .Mu "1"
    .Kappa "5.8e+07"
    .Rho "8930"
    .ThermalType "Normal"
    .ThermalConductivity "401"
    .SpecificHeat "390"
    .MetabolicRate "0"
    .BloodFlow "0"
    .VoxelConvection "0"
    .MechanicsType "Isotropic"
    .YoungsModulus "120"
    .PoissonsRatio "0.33"
    .ThermalExpansionRate "17"
    .Reflection "False"
    .Allowoutline "True"
    .Transparentoutline "False"
    .Create
End With


#-> section

With Material
   .Reset
   .Name "MATERIAL"
   .Folder "PCB_UID_110173_UTR"
   .Colour 0, 0.333, 0
   .Wireframe False
   .Transparency 90
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "6.4"
     .Mu "1.0"
     .Kappa "0.0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.75"
     .SetActiveMaterial "all"
     .Colour "0.75", "0.95", "0.85"
     .Wireframe "False"
     .Transparency "0"
     .Create

End With


#-> section

With Material
   .Reset
   .Name "VIAS_MATERIAL"
   .Folder "PCB_UID_110173_UTR"
   .Colour 1, 0, 0
   .Wireframe False
   .Transparency 0
    .FrqType "static"
    .Type "Normal"
    .SetMaterialUnit "Hz", "mm"
    .Epsilon "1"
    .Mu "1"
    .Kappa "5.8e+07"
    .TanD "0.0"
    .TanDFreq "0.0"
    .TanDGiven "False"
    .TanDModel "ConstTanD"
    .KappaM "0"
    .TanDM "0.0"
    .TanDMFreq "0.0"
    .TanDMGiven "False"
    .TanDMModel "ConstTanD"
    .DispModelEps "None"
    .DispModelMu "None"
    .DispersiveFittingSchemeEps "Nth Order"
    .DispersiveFittingSchemeMu "Nth Order"
    .UseGeneralDispersionEps "False"
    .UseGeneralDispersionMu "False"
    .FrqType "all"
    .Type "Lossy metal"
    .SetMaterialUnit "GHz", "mm"
    .Mu "1"
    .Kappa "5.8e+07"
    .Rho "8930"
    .ThermalType "Normal"
    .ThermalConductivity "401"
    .SpecificHeat "390"
    .MetabolicRate "0"
    .BloodFlow "0"
    .VoxelConvection "0"
    .MechanicsType "Isotropic"
    .YoungsModulus "120"
    .PoissonsRatio "0.33"
    .ThermalExpansionRate "17"
    .Reflection "False"
    .Allowoutline "True"
    .Transparentoutline "False"
    .Create
End With


#-> section

With Material
   .Reset
   .Name "PEC Sheets"
   .Folder "PCB_UID_110173_UTR"
   .Type "Pec"
   .Rho "0.0"
   .ThermalType "Normal"
   .ThermalConductivity "0"
   .SpecificHeat "0"
   .DynamicViscosity "0"
   .Emissivity "0"
   .MetabolicRate "0.0"
   .VoxelConvection "0.0"
   .BloodFlow "0"
   .MechanicsType "Unused"
   .FrqType "static"
   .Type "Pec"
   .MaterialUnit "Time", "s"
   .Epsilon "1"
   .Mu "1"
   .ReferenceCoordSystem "Global"
   .CoordSystemType "Cartesian"
   .NLAnisotropy "False"
   .NLAStackingFactor "1"
   .NLADirectionX "1"
   .NLADirectionY "0"
   .NLADirectionZ "0"
   .FrqType "all"
   .Type "Pec"
   .MaterialUnit "Time", "s"
   .Epsilon "1"
   .Mu "1"
   .ReferenceCoordSystem "Global"
   .CoordSystemType "Cartesian"
   .NLAnisotropy "False"
   .NLAStackingFactor "1"
   .NLADirectionX "1"
   .NLADirectionY "0"
   .NLADirectionZ "0"
   .Colour "0.588235", "0.588235", "0.588235"
   .Wireframe False
   .Reflection "False"
   .Allowoutline "True"
   .Transparentoutline "True"
   .Transparency 30
   .Create
End With


#-> section

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_1", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_1", 178, 178, 178

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_0", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_0", 178, 178, 178

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/GND:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/GND:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/NETC3_2:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/NETC3_2:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/NETC1_1:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/NETC1_1:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/NETC7_1:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/NETC7_1:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/NETC1_2:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/NETC1_2:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/NETL2_2:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/NETL2_2:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/NETC6_2:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/NETC6_2:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/VCC:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/VCC:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/NETC3_1:01_TOP_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/NETC3_1:01_TOP_LAYER", 179, 179, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Substrates:02_DIELECTRIC_1", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Substrates:02_DIELECTRIC_1", 0, 84, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/GND:03_BOTTOM_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/GND:03_BOTTOM_LAYER", 133, 28, 251

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/VCC:03_BOTTOM_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/VCC:03_BOTTOM_LAYER", 133, 28, 251

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/VCC:VIA_TOP_LAYER_BOTTOM_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/VCC:VIA_TOP_LAYER_BOTTOM_LAYER", 255, 0, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/Nets/GND:VIA_TOP_LAYER_BOTTOM_LAYER", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/Nets/GND:VIA_TOP_LAYER_BOTTOM_LAYER", 255, 0, 0

Solid.SetUseIndividualColor "PCB_UID_110173_UTR/PEC Sheets:leads", 1
Solid.ChangeIndividualColor "PCB_UID_110173_UTR/PEC Sheets:leads", 150, 150, 150


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_0", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_1", "1", "1"
With DiscreteFacePort
 .Reset
 .Portnumber 1
 .Label "J1_1"
 .Type "SParameter"
 .Impedance 50
 .VoltageAmplitude 1
 .SetP1 TRUE, 0,0,0
 .SetP2 TRUE, 0,0,1
 .InvertDirection False
 .LocalCoordinates True
 .Monitor True
 .CenterEdge True
 .UseProjection False
 .ReverseProjection False
 .Create

End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_2", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_3", "1", "1"
With DiscreteFacePort
 .Reset
 .Portnumber 2
 .Label "J2_1"
 .Type "SParameter"
 .Impedance 50
 .VoltageAmplitude 1
 .SetP1 TRUE, 0,0,0
 .SetP2 TRUE, 0,0,1
 .InvertDirection False
 .LocalCoordinates True
 .Monitor True
 .CenterEdge True
 .UseProjection False
 .ReverseProjection False
 .Create

End With


#-> section

Pick.PickCurveEndpointFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_4", 1
Pick.PickCurveEndpointFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_4", 2
With DiscretePort
 .Reset
 .Portnumber 3
 .Label "Q1_1"
 .Type "SParameter"
 .Impedance 50
 .Voltage 1
 .Current 1
 .SetP1 TRUE, 0,0,0
 .SetP2 TRUE, 0,0,1
 .InvertDirection False
 .LocalCoordinates True
 .Monitor True
 .Create

End With


#-> section

Pick.PickCurveEndpointFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_5", 1
Pick.PickCurveEndpointFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_5", 2
With DiscretePort
 .Reset
 .Portnumber 4
 .Label "Q1_3"
 .Type "SParameter"
 .Impedance 50
 .Voltage 1
 .Current 1
 .SetP1 TRUE, 0,0,0
 .SetP2 TRUE, 0,0,1
 .InvertDirection False
 .LocalCoordinates True
 .Monitor True
 .Create

End With


#-> section

With Wire
 .Reset
 .Name "Q1-1"
 .Folder "PCB_UID_110173_UTR"
 .Radius 0
 .Type("CurveWire")
 .Curve("PCB_UID_110173_UTR:Q1-1")
 .Material( "PEC" )
 .SolidWireModel( FALSE )
 .Termination( "Natural" )
 .AdvancedChainSelection( TRUE )
 .Add
End With


#-> section

With Wire
 .Reset
 .Name "Q1-2"
 .Folder "PCB_UID_110173_UTR"
 .Radius 0
 .Type("CurveWire")
 .Curve("PCB_UID_110173_UTR:Q1-2")
 .Material( "PEC" )
 .SolidWireModel( FALSE )
 .Termination( "Natural" )
 .AdvancedChainSelection( TRUE )
 .Add
End With


#-> section

With Wire
 .Reset
 .Name "Q1-3"
 .Folder "PCB_UID_110173_UTR"
 .Radius 0
 .Type("CurveWire")
 .Curve("PCB_UID_110173_UTR:Q1-3")
 .Material( "PEC" )
 .SolidWireModel( FALSE )
 .Termination( "Natural" )
 .AdvancedChainSelection( TRUE )
 .Add
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_6", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_7", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C1"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 4.7e-11
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_8", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_9", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C2"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 3.3e-12
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_10", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_11", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C3"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 8.2e-12
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_12", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_13", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C4"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 1.5e-12
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_14", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_15", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C5"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 1e-08
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_16", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_17", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C6"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 2.2e-10
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_18", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_19", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C7"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 2.2e-10
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_20", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_21", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCSerial"
   .SetName "C8"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 0
   .SetC 5.6e-12
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_22", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_23", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCParallel"
   .SetName "J3"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0.001
   .SetL 0
   .SetC 0
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_24", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_25", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCParallel"
   .SetName "L1"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 1e-08
   .SetC 0
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_26", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_27", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCParallel"
   .SetName "L2"
   .Folder "PCB_UID_110173_UTR"
   .SetR 0
   .SetL 8.2e-09
   .SetC 0
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_28", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_29", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCParallel"
   .SetName "R1"
   .Folder "PCB_UID_110173_UTR"
   .SetR 22
   .SetL 0
   .SetC 0
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_30", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_31", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCParallel"
   .SetName "R2"
   .Folder "PCB_UID_110173_UTR"
   .SetR 10000
   .SetL 0
   .SetC 0
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_32", "1", "1"
Pick.PickEdgeOnCurveFromId "PCB_UID_110173_UTR_PICK:pickable_edge_name_33", "1", "1"
With LumpedFaceElement
   .Reset
   .SetType "RLCParallel"
   .SetName "R3"
   .Folder "PCB_UID_110173_UTR"
   .SetR 10
   .SetL 0
   .SetC 0
   .SetGs 0
   .SetI0 0
   .SetT 0
   .SetMonitor FALSE
   .SetInvert FALSE
   .SetP1 TRUE, 0,0,0
   .SetP2 TRUE, 0,0,1
   .UseProjection FALSE
   .ReverseProjection FALSE
   .Create
End With


#-> section

' Creating groups =====
Group.NewFolder "PCB_UID_110173_UTR"
Group.NewFolder "PCB_UID_110173_UTR/Layers"
Group.NewFolder "PCB_UID_110173_UTR/Vias"
Group.NewFolder "PCB_UID_110173_UTR/Nets"
Group.NewFolder "PCB_UID_110173_UTR/Ports"
Group.NewFolder "PCB_UID_110173_UTR/Auxiliary Geometry"
Group.NewFolder "PCB_UID_110173_UTR/Auxiliary Geometry/PEC"
Group.NewFolder "PCB_UID_110173_UTR/Auxiliary Geometry/Components"
Group.NewFolder "PCB_UID_110173_UTR/Auxiliary Geometry/HeatSources"
Group.NewFolder "PCB_UID_110173_UTR/Auxiliary Geometry/RLC Node Support"
Group.NewFolder "PCB_UID_110173_UTR/Simplified Geometry"
Group.Add "PCB_UID_110173_UTR/Auxiliary Geometry/PEC:PORT_LAYER_0", "normal"
Group.AddItem "solid$PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_0", "PCB_UID_110173_UTR/Auxiliary Geometry/PEC:PORT_LAYER_0"

Group.Add "PCB_UID_110173_UTR/Auxiliary Geometry/PEC:PORT_LAYER_1", "normal"
Group.AddItem "solid$PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_1", "PCB_UID_110173_UTR/Auxiliary Geometry/PEC:PORT_LAYER_1"

Group.Add "PCB_UID_110173_UTR/Auxiliary Geometry/PEC:leads", "normal"
Group.AddItem "solid$PCB_UID_110173_UTR/PEC Sheets:leads", "PCB_UID_110173_UTR/Auxiliary Geometry/PEC:leads"

Group.Add "PCB_UID_110173_UTR/Auxiliary Geometry:Wires", "normal"
Group.AddItem "wireitem$PCB_UID_110173_UTR:Q1-1", "PCB_UID_110173_UTR/Auxiliary Geometry:Wires"
Group.AddItem "wireitem$PCB_UID_110173_UTR:Q1-2", "PCB_UID_110173_UTR/Auxiliary Geometry:Wires"
Group.AddItem "wireitem$PCB_UID_110173_UTR:Q1-3", "PCB_UID_110173_UTR/Auxiliary Geometry:Wires"

Group.Add "PCB_UID_110173_UTR/Layers:01_TOP_LAYER", "normal"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/GND:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC3_2:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC1_1:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC7_1:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC1_2:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETL2_2:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC6_2:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/VCC:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC3_1:01_TOP_LAYER", "PCB_UID_110173_UTR/Layers:01_TOP_LAYER"

Group.Add "PCB_UID_110173_UTR/Layers:02_DIELECTRIC_1", "normal"
Group.AddItem "solid$PCB_UID_110173_UTR/Substrates:02_DIELECTRIC_1", "PCB_UID_110173_UTR/Layers:02_DIELECTRIC_1"

Group.Add "PCB_UID_110173_UTR/Layers:03_BOTTOM_LAYER", "normal"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/GND:03_BOTTOM_LAYER", "PCB_UID_110173_UTR/Layers:03_BOTTOM_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/VCC:03_BOTTOM_LAYER", "PCB_UID_110173_UTR/Layers:03_BOTTOM_LAYER"

Group.Add "PCB_UID_110173_UTR/Vias:VIA_TOP_LAYER_BOTTOM_LAYER", "normal"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/VCC:VIA_TOP_LAYER_BOTTOM_LAYER", "PCB_UID_110173_UTR/Vias:VIA_TOP_LAYER_BOTTOM_LAYER"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/GND:VIA_TOP_LAYER_BOTTOM_LAYER", "PCB_UID_110173_UTR/Vias:VIA_TOP_LAYER_BOTTOM_LAYER"

Group.Add "PCB_UID_110173_UTR:Lumped Elements", "normal"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C1", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C2", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C3", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C4", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C5", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C6", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C7", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:C8", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:J3", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:L1", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:L2", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:R1", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:R2", "PCB_UID_110173_UTR:Lumped Elements"
Group.AddItem "lumpeditem$PCB_UID_110173_UTR:R3", "PCB_UID_110173_UTR:Lumped Elements"

Group.Add "PCB_UID_110173_UTR:Ports", "normal"
Group.AddItem "port$port1 (J1_1)", "PCB_UID_110173_UTR:Ports"
Group.AddItem "port$port2 (J2_1)", "PCB_UID_110173_UTR:Ports"
Group.AddItem "port$port3 (Q1_1)", "PCB_UID_110173_UTR:Ports"
Group.AddItem "port$port4 (Q1_3)", "PCB_UID_110173_UTR:Ports"



#-> section

MeshSettings.AdjustItemMeshSettingsStart

#-> section

Group.Add "meshgroup1", "mesh"

#-> section

With MeshSettings
With .ItemMeshSettings ("group$meshgroup1")
.SetMeshType "Hex"

          .Set "ConsiderGlobalEdgeRefinement", 0
          .Set "ConsiderGlobalFaceRefinement", 0
          .Set "ConsiderGlobalMaterialRefinement", 0
          .Set "ConsiderGlobalRefinement", 0
          .Set "ConsiderGlobalSnapping", 0
          .Set "EdgeRefinementBufferLines", 3
          .Set "EdgeRefinementRatio", "1"
          .Set "EdgeRefinementStep", "0"
          .Set "EdgeRefinementType", "NONE"
          .Set "EllipseRefinementNSteps", 2
          .Set "EllipseRefinementRatio", 2
          .Set "EllipseRefinementStep", 0
          .Set "EllipseRefinementType", "NONE"
          .Set "FaceRefinementBufferLines", 3
          .Set "FaceRefinementNSteps", 2
          .Set "FaceRefinementRatio", 2
          .Set "FaceRefinementStep", 0
          .Set "FaceRefinementType", "NONE"
          .Set "SnappingIntervals", 0, 0, 0
          .Set "SnappingPriority", 0
          .Set "SnapToAxialEdges", 0
          .Set "SnapToCylinderCenters", 0
          .Set "SnapToCylinders", 0
          .Set "SnapToEllipseCenters", 0
          .Set "SnapToEllipses", 0
          .Set "SnapToObjectBoundaries", 0
          .Set "SnapToPlanes", "0"
          .Set "SnapToSpheres", 0
          .Set "SnapToTori", 0
          .Set "SnapXYZ", "0", "0", "0"
          .Set "UseMaterialRefinement", 0
          .Set "UseSnappingPriority", 0
          .Set "VolumeRefinementExtentNumSteps", 0, 0, 0
          .Set "VolumeRefinementExtentStep", 0, 0, 0
          .Set "VolumeRefinementExtentType", "NONE"
          .Set "VolumeRefinementExtentValueUseSameXYZ", 1
          .Set "VolumeRefinementNumSteps", "0", "0", "0"
          .Set "VolumeRefinementRatio", "0", "0", "0"
          .Set "VolumeRefinementScopeType", "ALL"
          .Set "VolumeRefinementStep", "0.000000", "0.000000", "0.000000"
          .Set "VolumeRefinementType", "NONE"
          .Set "VolumeRefinementValueUseSameXYZ", 0
    
.SetMeshType "HexTLM"

          .Set "ConsiderGlobalEdgeRefinement", 0
          .Set "ConsiderGlobalFaceRefinement", 0
          .Set "ConsiderGlobalMaterialRefinement", 0
          .Set "ConsiderGlobalRefinement", 0
          .Set "ConsiderGlobalSnapping", 0
          .Set "EdgeRefinementBufferLines", 3
          .Set "EdgeRefinementRatio", "1"
          .Set "EdgeRefinementStep", "0"
          .Set "EdgeRefinementType", "NONE"
          .Set "EllipseRefinementNSteps", 2
          .Set "EllipseRefinementRatio", 2
          .Set "EllipseRefinementStep", 0
          .Set "EllipseRefinementType", "NONE"
          .Set "FaceRefinementBufferLines", 3
          .Set "FaceRefinementNSteps", 2
          .Set "FaceRefinementRatio", 2
          .Set "FaceRefinementStep", 0
          .Set "FaceRefinementType", "NONE"
          .Set "SnappingIntervals", 0, 0, 0
          .Set "SnappingPriority", 0
          .Set "SnapToAxialEdges", 0
          .Set "SnapToCylinderCenters", 0
          .Set "SnapToCylinders", 0
          .Set "SnapToEllipseCenters", 0
          .Set "SnapToEllipses", 0
          .Set "SnapToObjectBoundaries", 0
          .Set "SnapToPlanes", "0"
          .Set "SnapToSpheres", 0
          .Set "SnapToTori", 0
          .Set "SnapXYZ", "0", "0", "0"
          .Set "UseMaterialRefinement", 0
          .Set "UseSnappingPriority", 0
          .Set "VolumeRefinementExtentNumSteps", 0, 0, 0
          .Set "VolumeRefinementExtentStep", 0, 0, 0
          .Set "VolumeRefinementExtentType", "NONE"
          .Set "VolumeRefinementExtentValueUseSameXYZ", 1
          .Set "VolumeRefinementNumSteps", "0", "0", "0"
          .Set "VolumeRefinementRatio", "0", "0", "0"
          .Set "VolumeRefinementScopeType", "ALL"
          .Set "VolumeRefinementStep", "0.000000", "0.000000", "0.000000"
          .Set "VolumeRefinementType", "NONE"
          .Set "VolumeRefinementValueUseSameXYZ", 0
    
End With
End With


#-> section

Group.AddItem "solid$PCB_UID_110173_UTR/Nets/GND:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/GND:03_BOTTOM_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/GND:VIA_TOP_LAYER_BOTTOM_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC1_1:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC1_2:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC3_1:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC3_2:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC6_2:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETC7_1:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/NETL2_2:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/VCC:01_TOP_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/VCC:03_BOTTOM_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/Nets/VCC:VIA_TOP_LAYER_BOTTOM_LAYER", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_0", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/PEC Sheets:PORT_LAYER_1", "meshgroup1"
Group.AddItem "solid$PCB_UID_110173_UTR/PEC Sheets:leads", "meshgroup1"


#-> section

Group.Add "meshgroup2", "mesh"

#-> section

With MeshSettings
With .ItemMeshSettings ("group$meshgroup2")
.SetMeshType "Hex"

          .Set "ConsiderGlobalEdgeRefinement", 0
          .Set "ConsiderGlobalFaceRefinement", 0
          .Set "ConsiderGlobalMaterialRefinement", 0
          .Set "ConsiderGlobalRefinement", 0
          .Set "ConsiderGlobalSnapping", 0
          .Set "EdgeRefinementBufferLines", 3
          .Set "EdgeRefinementRatio", "1"
          .Set "EdgeRefinementStep", "0"
          .Set "EdgeRefinementType", "NONE"
          .Set "EllipseRefinementNSteps", 2
          .Set "EllipseRefinementRatio", 2
          .Set "EllipseRefinementStep", 0
          .Set "EllipseRefinementType", "NONE"
          .Set "FaceRefinementBufferLines", 3
          .Set "FaceRefinementNSteps", 2
          .Set "FaceRefinementRatio", 2
          .Set "FaceRefinementStep", 0
          .Set "FaceRefinementType", "NONE"
          .Set "SnappingIntervals", 0, 0, 0
          .Set "SnappingPriority", 0
          .Set "SnapToAxialEdges", 0
          .Set "SnapToCylinderCenters", 0
          .Set "SnapToCylinders", 0
          .Set "SnapToEllipseCenters", 0
          .Set "SnapToEllipses", 0
          .Set "SnapToObjectBoundaries", 0
          .Set "SnapToPlanes", "1"
          .Set "SnapToSpheres", 0
          .Set "SnapToTori", 0
          .Set "SnapXYZ", "0", "0", "1"
          .Set "UseMaterialRefinement", 0
          .Set "UseSnappingPriority", 0
          .Set "VolumeRefinementExtentNumSteps", 0, 0, 0
          .Set "VolumeRefinementExtentStep", 0, 0, 0
          .Set "VolumeRefinementExtentType", "NONE"
          .Set "VolumeRefinementExtentValueUseSameXYZ", 1
          .Set "VolumeRefinementNumSteps", "0", "0", "0"
          .Set "VolumeRefinementRatio", "0", "0", "0"
          .Set "VolumeRefinementScopeType", "ALL"
          .Set "VolumeRefinementStep", "10.000000", "10.000000", "10.000000"
          .Set "VolumeRefinementType", "ABS_VALUE"
          .Set "VolumeRefinementValueUseSameXYZ", 0
    
.SetMeshType "HexTLM"

          .Set "ConsiderGlobalEdgeRefinement", 0
          .Set "ConsiderGlobalFaceRefinement", 0
          .Set "ConsiderGlobalMaterialRefinement", 0
          .Set "ConsiderGlobalRefinement", 0
          .Set "ConsiderGlobalSnapping", 0
          .Set "EdgeRefinementBufferLines", 3
          .Set "EdgeRefinementRatio", "1"
          .Set "EdgeRefinementStep", "0"
          .Set "EdgeRefinementType", "NONE"
          .Set "EllipseRefinementNSteps", 2
          .Set "EllipseRefinementRatio", 2
          .Set "EllipseRefinementStep", 0
          .Set "EllipseRefinementType", "NONE"
          .Set "FaceRefinementBufferLines", 3
          .Set "FaceRefinementNSteps", 2
          .Set "FaceRefinementRatio", 2
          .Set "FaceRefinementStep", 0
          .Set "FaceRefinementType", "NONE"
          .Set "SnappingIntervals", 0, 0, 0
          .Set "SnappingPriority", 0
          .Set "SnapToAxialEdges", 0
          .Set "SnapToCylinderCenters", 0
          .Set "SnapToCylinders", 0
          .Set "SnapToEllipseCenters", 0
          .Set "SnapToEllipses", 0
          .Set "SnapToObjectBoundaries", 0
          .Set "SnapToPlanes", "1"
          .Set "SnapToSpheres", 0
          .Set "SnapToTori", 0
          .Set "SnapXYZ", "0", "0", "1"
          .Set "UseMaterialRefinement", 0
          .Set "UseSnappingPriority", 0
          .Set "VolumeRefinementExtentNumSteps", 0, 0, 0
          .Set "VolumeRefinementExtentStep", 0, 0, 0
          .Set "VolumeRefinementExtentType", "NONE"
          .Set "VolumeRefinementExtentValueUseSameXYZ", 1
          .Set "VolumeRefinementNumSteps", "0", "0", "0"
          .Set "VolumeRefinementRatio", "0", "0", "0"
          .Set "VolumeRefinementScopeType", "ALL"
          .Set "VolumeRefinementStep", "10.000000", "10.000000", "10.000000"
          .Set "VolumeRefinementType", "ABS_VALUE"
          .Set "VolumeRefinementValueUseSameXYZ", 0
    
End With
End With


#-> section

Group.AddItem "solid$PCB_UID_110173_UTR/Substrates:02_DIELECTRIC_1", "meshgroup2"


#-> section

MeshSettings.AdjustItemMeshSettingsEnd

#-> section

Mesh.EndSubProjectAdd

#-> section

Curve.DeleteCurve "PCB_UID_110173_UTR_PICK"

#-> section

With MeshSettings
     .SetMeshType "All"
     .Set "PrioritizationScheme", "ElectricConductivity"
End With


#-> section

Component.Rename "PCB_UID_110173_UTR", "PCB_UID_110173_repl_token"

#-> section

Curve.RenameCurve "PCB_UID_110173_UTR", "PCB_UID_110173_repl_token"

#-> section

Group.RenameFolder "PCB_UID_110173_UTR", "PCB_UID_110173_repl_token"

#-> section

LumpedElement.RenameFolder "PCB_UID_110173_UTR", "PCB_UID_110173_repl_token"

#-> section

Material.RenameFolder "PCB_UID_110173_UTR", "PCB_UID_110173_repl_token"

#-> section

Wire.RenameFolder "PCB_UID_110173_UTR", "PCB_UID_110173_repl_token"

