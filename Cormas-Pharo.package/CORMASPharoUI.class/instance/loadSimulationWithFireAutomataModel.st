loading
loadSimulationWithFireAutomataModel
| nbLines es anim |
CMFireAutomataModel  defaultInit: #init58WithFire.
	aModel := CMFireAutomataModel 
		initialize;
		new.
	nbLines := 100.
	aModel initializeSpaceModel.
	aModel
		createGridX: nbLines
		Y: nbLines
		neighbourhood: 4
		closed: true.

	aModel initSimulation.
	aModel runStep.
	es := (RTBox new
		color: [ :e | 
			e state == #tree
				ifTrue: [ Color green ]
				ifFalse: [ e state == #fire
						ifTrue: [ Color red ]
						ifFalse: [ e state == #ash
								ifTrue: [ Color gray ]
								ifFalse: [ Color black ] ] ] ];
		size: 25) elementsOn: aModel theCMFireAutomataCells.
	view addAll: es.
	RTGridLayout new
		gapSize: 0;
		lineItemsCount: aModel spaceModel column;
		on: view elements.
	view canvas camera focusOnCenterScaled.
	anim := RTActiveAnimation new.
	anim intervalInMilliseconds: 0.
	anim
		blockToExecute: [ aModel runStep.
			view elements do: #updateShape ].
	anim inView: view.