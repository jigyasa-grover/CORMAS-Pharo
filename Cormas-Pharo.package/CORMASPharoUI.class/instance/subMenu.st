accessing
subMenu 

	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item
					name: 'Biomass';
					icon: (self iconNamed: #nautilusIcon);
					shortcut: $o meta;
					action: [ self visualize: self aModel 
											on: #theCMECECVegetationUnits
											with: #biomass.  ] ]
				].