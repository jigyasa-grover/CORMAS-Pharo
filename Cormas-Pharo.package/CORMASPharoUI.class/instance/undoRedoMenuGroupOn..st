undo-redo
undoRedoMenuGroupOn: aMenuGroupModel
	undoRedoMenugroup
		addItem: [ :anItem | 
			anItem
				name: 'Undo';
				icon: (self iconNamed: #smallUndoIcon);
				action: [ self undoDialogBox ] ].
	undoRedoMenugroup
		addItem: [ :anItem | 
			anItem
				name: 'Redo';
				icon: (self iconNamed: #smallRedoIcon);
				action: [  ] ]