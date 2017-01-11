as yet unclassified
loadSimulation

"Vegetation grid animation without foragers"
	
	| aModel n c es anim popup menu|
	
	aModel := CMECECModel 
		initialize;
		new.
	
	"v := RTView new."
	
	n := RTMultiLinearColor new
		colors: (RTColorPalette sequential colors: 9 scheme: 'YlGnBu').
		
	c := n command: [ :cells | cells biomass / 10.0 ].
	
	aModel initSimulation.
	aModel runStep.
	
	es := (RTBox new
		color: c;
		size: 25) elementsOn: aModel theCMECECVegetationUnits.
		
	view addAll: es.
	
	"Adding a popup for biomass info on hover"
	popup := RTPopup new.
	popup text: [ :object | object asPopupText ].
	es @ popup.
	
	"Adding a popup for object inspection on left click"
	es do: [:element | element when: TRMouseLeftClick do: [ :evt | element model inspect ]].
	
	menu := RTMenuBuilder new view: view. 
	menu menu: 'Visualize' background: Color red callback: [ CMECECModel visualize ].
	
	RTGridLayout new
		gapSize: 0;
		lineItemsCount: aModel spaceModel column;
		on: view elements.
	
	view canvas camera focusOnCenterScaled.
	
	anim := RTActiveAnimation new.
	"anim intervalInMilliseconds: 0."
	anim
		blockToExecute: [ aModel runStep.
			view elements do: #updateShape ].
	anim inView: view.
	
	view signalUpdate.