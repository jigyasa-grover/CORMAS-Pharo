loading
loadMenuGroupOn: aMenuGroupModel
	loadMenuGroup
		addItem: [ :anItem | 
			anItem
				name: 'Load';
				subMenu: self loadSubMenu ].