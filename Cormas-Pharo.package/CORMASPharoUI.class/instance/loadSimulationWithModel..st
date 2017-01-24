loading
loadSimulationWithModel: aCORMASModel
	"Vegetation grid animation without foragers"

	| n c|
	aModel := aCORMASModel
		initialize;
		new.
	n := RTMultiLinearColor new colors: (RTColorPalette sequential colors: 9 scheme: 'YlGnBu').
	c := n command: [ :cells | cells biomass / 10.0 ].
	aModel initSimulation.
	aModel runStep.
	elements := (RTBox new
		color: c;
		size: 25) elementsOn: aModel theCMECECVegetationUnits.
	view addAll: elements.

	"Adding a popup for biomass info on hover"
	self onHoverPopup: elements.

	"Adding a popup for object inspection on left click"
	elements do: [ :element | element when: TRMouseLeftClick do: [ :evt | element model inspect ] ].
	RTGridLayout new
		gapSize: 0;
		lineItemsCount: aModel spaceModel column;
		on: view elements.
	view canvas camera focusOnCenterScaled.