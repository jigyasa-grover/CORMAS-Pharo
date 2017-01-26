execution
undoRedoMenuGroupOn: aMenuGroupModel
	undoRedoMenugroup 
		addItem: [ :anItem | 
			anItem
				name: 'Undo';
				icon: (self iconNamed: #smallUndoIcon);
				action: [  ] ].
	undoRedoMenugroup 
		addItem: [ :anItem | 
			anItem
				name: 'Redo';
				icon: (self iconNamed: #smallRedoIcon);
				action: [  ] ]