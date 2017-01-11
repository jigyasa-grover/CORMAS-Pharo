initialization
initializeWidgets

	label := self newLabel.
	label label: 'Simple example of combining Roassal and Spec for CORMAS' .

	button := self newButton.
	button label: 'Load '.
	
	diagram := self instantiate: RoassalModel.	
	diagram script: [ :aView :canvas | self view: aView. aView @ RTDraggableView ].