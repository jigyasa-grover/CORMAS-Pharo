visualization
visualizationSubMenu
	"|methods|
	methods := self collectAtttributeSelectors: CMECECVegetationUnit withTag: #accessing."

	| attributeSelectors |
	^ MenuModel new
		addGroup: [ :group | 
			modelClasses
				ifNotNil: [ :aModelClass | 
					attributeSelectors := self collectAtttributeSelectors: aModelClass key withTag: #accessing.
					attributeSelectors
						ifNotNilDo: [ :anAttributeSelectors | 
							group
								addItem: [ :item | 
									item
										name: anAttributeSelectors name asString;
										icon: (self iconNamed: #nautilusIcon);
										shortcut: $o meta;
										action: [ self visualize: self aModel on: aModelClass with: anAttributeSelectors ] ] ] ] ]