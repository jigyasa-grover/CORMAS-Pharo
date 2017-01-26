loading
loadMenuGroupOn: aMenuGroupModel
	loadMenuGroup
		addItem: [ :anItem | 
			anItem
				name: 'Load';
				icon: (self iconNamed: #packageAddIcon);
				subMenu: self loadSubMenu ]