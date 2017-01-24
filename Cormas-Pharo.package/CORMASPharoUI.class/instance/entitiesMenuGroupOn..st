entities
entitiesMenuGroupOn: aMenuGroupModel
	entitiesMenuGroup
		addItem: [ :anItem | 
			anItem
				name: 'Model Entities';
				subMenu: self entitiesSubMenu  ].