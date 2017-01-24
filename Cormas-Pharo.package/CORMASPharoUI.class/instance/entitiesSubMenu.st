entities
entitiesSubMenu
	^ MenuModel new
		addGroup: [ :group | 
			modelClasses
				ifNotNil: [ modelClasses
						keysDo: [ :aModelClass | 
							group
								addItem: [ :item | 
									item
										name: aModelClass asString;
										icon: (self iconNamed: #nautilusIcon);
										shortcut: $o meta;
										action: [ nil ] ] ] ] ]