visualization
visualizationSubMenu
	| attributeSelectors |
	^ MenuModel new
		addGroup: [ :group | 
			modelClasses
				ifNotNil: [ modelClasses
						keysDo: [ :aModelClass | 
							attributeSelectors := self collectAtttributeSelectors: (self class environment at: aModelClass) withTag: #accessing.
							attributeSelectors
								ifNotNil: [ :anAttributeSelectors | 
									group
										addItem: [ :item | 
											item
												name: anAttributeSelectors asString;
												icon: (self iconNamed: #nautilusIcon);
												shortcut: $o meta;
												action: [ self visualize: self aModel on: #CMECECVegetationUnit with: #biomass ] ] ] ] ] ]