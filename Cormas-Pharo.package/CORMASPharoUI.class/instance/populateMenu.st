interface
populateMenu
	menu
		addGroup: [ :group | 
			loadMenuGroup := group.
			self loadMenuGroupOn: loadMenuGroup.
			visualizeMenuGroup := group.
			self visualizeMenuGroupOn: visualizeMenuGroup.
			entitiesMenuGroup := group.
			self entitiesMenuGroupOn: entitiesMenuGroup.
			executionPanelMenuGroup := group.
			self executionPanelMenuGroupOn: group.
			undoRedoMenugroup := group.
			self undoRedoMenuGroupOn: group
			"group
				addItem: [ :item | 
					item
						name: 'Pick Cell';
						icon: (self iconNamed: #testGreen);
						action: [ aModel pickCell ] ]" ]