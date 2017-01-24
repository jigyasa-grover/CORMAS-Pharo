execution
executionPanelMenuGroupOn: aMenuGroupModel
	executionPanelMenuGroup
		addItem: [ :anItem | 
			anItem
				name: 'Run';
				icon: (self iconNamed: #testGreen);
				action: [ self animateSimulation ] ].
	executionPanelMenuGroup
		addItem: [ :anItem | 
			anItem
				name: 'Stop';
				icon: (self iconNamed: #smallWarningIcon);
				action: [ aModel simManager finishSimulation ] ].
	executionPanelMenuGroup
		addItem: [ :anItem | 
			anItem
				name: 'Reset';
				icon: (self iconNamed: #testGreen);
				action: [ aModel resetCells ] ]