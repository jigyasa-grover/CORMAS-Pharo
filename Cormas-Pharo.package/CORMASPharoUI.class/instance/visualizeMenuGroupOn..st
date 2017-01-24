visualization
visualizeMenuGroupOn: aMenuGroupModel
	visualizeMenuGroup
		addItem: [ :anItem | 
			anItem
				name: 'Visualize';
				subMenu: self visualizationSubMenu ]