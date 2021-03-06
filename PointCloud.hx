# Avizo Project 900
# Avizo
# Generated by Avizo 9.0.0
remove -all
remove "grayScale.am" "data.csv" "data.Cloud" "Spreadsheet To Point Cloud" "Bounding Box" "Point Cloud View" "SonifySpatial"

# Create viewers
viewer setVertical 0

viewer 0 setTransparencyType 5
viewer 0 setAutoRedraw 0
viewer 0 show
mainWindow show

set hideNewModules 1
[ load ${AMIRA_ROOT}/data/colormaps/grayScale.am ] setLabel "grayScale.am"
"grayScale.am" setIconPosition 0 0
"grayScale.am" setNoRemoveAll 1
"grayScale.am" setVar "CustomHelp" {HxColormap256}
"grayScale.am" master disconnect
"grayScale.am" Datafield disconnect
"grayScale.am" fire
"grayScale.am" setMinMax 0 255
"grayScale.am" flags setValue 1
"grayScale.am" shift setMinMax -1 1
"grayScale.am" shift setButtons 0
"grayScale.am" shift setEditButton 1
"grayScale.am" shift setIncrement 0.133333
"grayScale.am" shift setValue 0
"grayScale.am" shift setSubMinMax -1 1
"grayScale.am" scale setMinMax 0 1
"grayScale.am" scale setButtons 0
"grayScale.am" scale setEditButton 1
"grayScale.am" scale setIncrement 0.1
"grayScale.am" scale setValue 1
"grayScale.am" scale setSubMinMax 0 1
"grayScale.am" fire
"grayScale.am" setViewerMask 49151

set hideNewModules 0
[ load -csv data.csv ] setLabel "data.csv"
"data.csv" setIconPosition 68 29
"data.csv" master disconnect
"data.csv" fire
"data.csv" fire
"data.csv" setViewerMask 49151

set hideNewModules 0
create HxSpreadSheetToCluster "Spreadsheet To Point Cloud"
"Spreadsheet To Point Cloud" setIconPosition 12 65
"Spreadsheet To Point Cloud" setVar "CustomHelp" {HxSpreadSheetToCluster}
"Spreadsheet To Point Cloud" data connect "data.csv"
"Spreadsheet To Point Cloud" fire
"Spreadsheet To Point Cloud" output setValue 0 0
"Spreadsheet To Point Cloud" output setToggleVisible 0 1
"Spreadsheet To Point Cloud" output setValue 1 1
"Spreadsheet To Point Cloud" output setToggleVisible 1 1
"Spreadsheet To Point Cloud" tensor setValue 0
"Spreadsheet To Point Cloud" table setIndex 0 0
"Spreadsheet To Point Cloud" value setIndex 0 3
"Spreadsheet To Point Cloud" coordinates setIndex 0 0
"Spreadsheet To Point Cloud" coordinates setIndex 1 1
"Spreadsheet To Point Cloud" coordinates setIndex 2 2
"Spreadsheet To Point Cloud" firstDirection setIndex 0 3
"Spreadsheet To Point Cloud" firstDirection setIndex 1 3
"Spreadsheet To Point Cloud" firstDirection setIndex 2 3
"Spreadsheet To Point Cloud" secondDirection setIndex 0 3
"Spreadsheet To Point Cloud" secondDirection setIndex 1 3
"Spreadsheet To Point Cloud" secondDirection setIndex 2 3
"Spreadsheet To Point Cloud" thirdDirection setIndex 0 3
"Spreadsheet To Point Cloud" thirdDirection setIndex 1 3
"Spreadsheet To Point Cloud" thirdDirection setIndex 2 3
"Spreadsheet To Point Cloud" EigenValues setIndex 0 3
"Spreadsheet To Point Cloud" EigenValues setIndex 1 3
"Spreadsheet To Point Cloud" EigenValues setIndex 2 3
"Spreadsheet To Point Cloud" ExtentMin setIndex 0 3
"Spreadsheet To Point Cloud" ExtentMin setIndex 1 3
"Spreadsheet To Point Cloud" ExtentMin setIndex 2 3
"Spreadsheet To Point Cloud" ExtentMax setIndex 0 3
"Spreadsheet To Point Cloud" ExtentMax setIndex 1 3
"Spreadsheet To Point Cloud" ExtentMax setIndex 2 3
"Spreadsheet To Point Cloud" applyTransformToResult 1
"Spreadsheet To Point Cloud" fire
"Spreadsheet To Point Cloud" setViewerMask 49151
"Spreadsheet To Point Cloud" setPickable 1

set hideNewModules 0
[ if { ![info exists TMPIO-1] } {
    {Spreadsheet To Point Cloud} action hit; {Spreadsheet To Point Cloud} fire
    set TMPIO-1 "data created" 
  }
  {Spreadsheet To Point Cloud} getResult cluster
 ] setLabel "data.Cloud"
"data.Cloud" setIconPosition 56 105
"data.Cloud" master connect "Spreadsheet To Point Cloud" 1
"data.Cloud" fire
"data.Cloud" setViewerMask 49151

set hideNewModules 0
create HxBoundingBox "Bounding Box"
"Bounding Box" setIconPosition 226 136
"Bounding Box" setVar "CustomHelp" {HxBoundingBox}
"Bounding Box" data connect "data.Cloud"
"Bounding Box" projection disconnect
"Bounding Box" fire
"Bounding Box" options setState {item 0 0 color 1 1 0.5 0 item 3 0 }
"Bounding Box" lineWidth setMinMax 0 1 10
"Bounding Box" lineWidth setValue 0 1
"Bounding Box" font setState {name: "Arial Unicode MS" size: 12 buttonText: Select bold: 0 italic: 0 color: 0.8 0.8 0.8}
"Bounding Box" fire
"Bounding Box" setViewerMask 49151
"Bounding Box" setShadowStyle 0
"Bounding Box" setPickable 1

set hideNewModules 0
create HxClusterView "Point Cloud View"
"Point Cloud View" setIconPosition 229 98
"Point Cloud View" setVar "CustomHelp" {HxClusterView}
"Point Cloud View" data connect "data.Cloud"
"Point Cloud View" colormap setDefaultColor 1 0 0
"Point Cloud View" colormap setDefaultAlpha 0.800000
"Point Cloud View" colormap setLocalRange 1
"Point Cloud View" colormap setLocalMinMax 0.000000 103.000000
"Point Cloud View" colormap enableAlpha 1
"Point Cloud View" colormap enableAlphaToggle 1
"Point Cloud View" colormap setAutoAdjustRangeMode 1
"Point Cloud View" colormap disconnect
"Point Cloud View" projection disconnect
"Point Cloud View" fire
"Point Cloud View" color setIndex 0 0
"Point Cloud View" options setValue 0 1
"Point Cloud View" options setToggleVisible 0 1
"Point Cloud View" options setValue 1 0
"Point Cloud View" options setToggleVisible 1 1
"Point Cloud View" options setValue 2 1
"Point Cloud View" options setToggleVisible 2 1
"Point Cloud View" options setValue 3 0
"Point Cloud View" options setToggleVisible 3 1
"Point Cloud View" options setValue 4 0
"Point Cloud View" options setToggleVisible 4 1
"Point Cloud View" filter setState {}
"Point Cloud View" pointSize setMinMax 0 10
"Point Cloud View" pointSize setButtons 1
"Point Cloud View" pointSize setEditButton 1
"Point Cloud View" pointSize setIncrement 1
"Point Cloud View" pointSize setValue 4
"Point Cloud View" pointSize setSubMinMax 0 10
"Point Cloud View" scaleData setIndex 0 -1
"Point Cloud View" sphereScale setMinMax -1 1
"Point Cloud View" sphereScale setButtons 0
"Point Cloud View" sphereScale setEditButton 1
"Point Cloud View" sphereScale setIncrement 0.133333
"Point Cloud View" sphereScale setValue -1
"Point Cloud View" sphereScale setSubMinMax -1 1
"Point Cloud View" setBondWidth 1
"Point Cloud View" setBondColor 0 0 0.1
"Point Cloud View" fire
"Point Cloud View" pointSize setMinMax 0 10
"Point Cloud View" pointSize setButtons 1
"Point Cloud View" pointSize setEditButton 1
"Point Cloud View" pointSize setIncrement 1
"Point Cloud View" pointSize setValue 4
"Point Cloud View" pointSize setSubMinMax 0 10
"Point Cloud View" fire
"Point Cloud View" setViewerMask 49151
"Point Cloud View" setShadowStyle 0
"Point Cloud View" setPickable 1

set hideNewModules 0
create SonifySpatial "SonifySpatial"
"SonifySpatial" setIconPosition 198 185
"SonifySpatial" setVar "CustomHelp" {SonifySpatial}
"SonifySpatial" data connect "data.Cloud"
"SonifySpatial" colormap setDefaultColor 1 0 0
"SonifySpatial" colormap setDefaultAlpha 0.800000
"SonifySpatial" colormap setLocalRange 1
"SonifySpatial" colormap setLocalMinMax 0.000000 103.000000
"SonifySpatial" colormap enableAlpha 1
"SonifySpatial" colormap enableAlphaToggle 1
"SonifySpatial" colormap setAutoAdjustRangeMode 1
"SonifySpatial" colormap setColorbarMinMax 0 103
"SonifySpatial" colormap disconnect
"SonifySpatial" projection disconnect
"SonifySpatial" fire
"SonifySpatial" color setIndex 0 0
"SonifySpatial" options setValue 0 0
"SonifySpatial" options setToggleVisible 0 1
"SonifySpatial" options setValue 1 0
"SonifySpatial" options setToggleVisible 1 1
"SonifySpatial" options setValue 2 1
"SonifySpatial" options setToggleVisible 2 1
"SonifySpatial" options setValue 3 0
"SonifySpatial" options setToggleVisible 3 1
"SonifySpatial" options setValue 4 0
"SonifySpatial" options setToggleVisible 4 1
"SonifySpatial" filter setState {}
"SonifySpatial" pointSize setMinMax 0 10
"SonifySpatial" pointSize setButtons 1
"SonifySpatial" pointSize setEditButton 1
"SonifySpatial" pointSize setIncrement 1
"SonifySpatial" pointSize setValue 1
"SonifySpatial" pointSize setSubMinMax 0 10
"SonifySpatial" scaleData setIndex 0 -1
"SonifySpatial" sphereScale setMinMax -1 1
"SonifySpatial" sphereScale setButtons 0
"SonifySpatial" sphereScale setEditButton 1
"SonifySpatial" sphereScale setIncrement 0.133333
"SonifySpatial" sphereScale setValue 0
"SonifySpatial" sphereScale setSubMinMax -1 1
"SonifySpatial" action6 setState {109.171.139.88}
"SonifySpatial" setBondWidth 1
"SonifySpatial" setBondColor 0 0 0.1
"SonifySpatial" fire
"SonifySpatial" pointSize setMinMax 0 10
"SonifySpatial" pointSize setButtons 1
"SonifySpatial" pointSize setEditButton 1
"SonifySpatial" pointSize setIncrement 1
"SonifySpatial" pointSize setValue 1
"SonifySpatial" pointSize setSubMinMax 0 10
"SonifySpatial" fire
"SonifySpatial" setViewerMask 49151
"SonifySpatial" select
"SonifySpatial" setShadowStyle 0
"SonifySpatial" setPickable 1

set hideNewModules 0

viewer 0 setCameraOrientation 1 0 0 3.14159
viewer 0 setCameraPosition 0.3834 -0.137374 -5.35629
viewer 0 setCameraFocalDistance 5.29469
viewer 0 setCameraNearDistance 3.49628
viewer 0 setCameraFarDistance 7.09669
viewer 0 setCameraType perspective
viewer 0 setCameraHeightAngle 44.9023
viewer 0 setAutoRedraw 1
viewer 0 redraw

data.csv show hit
data.csv fire
theObjectPool setSelectionOrder SonifySpatial
