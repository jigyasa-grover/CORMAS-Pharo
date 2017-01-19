initialization
initializeWidgets

	manager := self newTabManager.
	manager whenTabSelected: [ self updateTitle ].
	self populateManager.

	label := self newLabel.
	label label: 'Simple example of combining Roassal and Spec for CORMAS' .
	
	menu := MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Load';
						icon: (self iconNamed: #openIcon);
						action: [ self loadSimulation. ] ].
			group
				addItem: [ :item | 
					item
						name: 'Visualize';
						icon: (self iconNamed: #nautilusIcon);
						subMenu: self subMenu. ].
			group
				addItem: [ :item | 
					item
						name: 'Run';
						icon: (self iconNamed: #testGreen);
						action: [  ]  ].
			group
				addItem: [ :item | 
					item
						name: 'Stop';
						icon: (self iconNamed: #smallWarningIcon);
						action: [ aModel simManager finishSimulation. ]  ].
			group
				addItem: [ :item | 
					item
						name: 'Reset';
						icon: (self iconNamed: #testGreen);
						action: [ aModel resetCells.]  ].
			group
				addItem: [ :item | 
					item
						name: 'Pick Cell';
						icon: (self iconNamed: #testGreen);
						action: [ aModel pickCell.]  ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Open file';
						icon: (self iconNamed: #openIcon);
						action: [ self inform: 'Open File' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Save File';
						icon: (self iconNamed: #smallSaveIcon);
						action: [ self inform: 'Save File' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Print file';
						icon: (self iconNamed: #smallPrintIcon);
						action: [ self inform: 'Print file' ] ] ];
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Undo';
						icon: (self iconNamed: #smallUndoIcon);
						action: [ self inform: 'Undo' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Redo';
						icon: (self iconNamed: #smallRedoIcon);
						action: [ self inform: 'Redo' ] ] ].
	menu applyTo: self.

	diagram := self instantiate: RoassalModel.	
	diagram script: [ :aView :canvas | self view: aView. aView @ RTDraggableView ].
	