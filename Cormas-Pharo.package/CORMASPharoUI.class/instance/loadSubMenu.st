loading
loadSubMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'CMECEC Model';
						icon: (self iconNamed: #nautilusIcon);
						shortcut: $o meta;
						action: [ self loadSimulationWithModel: CMECECModel.
							self needRebuild: false
							"self buildWithSpecLayout: self class defaultSpec" ] ].
			self needRebuild: false.
			"self buildWithSpecLayout: self class defaultSpec."
			group
				addItem: [ :item | 
					item
						name: 'CM FireAutomata Model';
						icon: (self iconNamed: #nautilusIcon);
						shortcut: $o meta;
						action: [ self loadSimulationWithFireAutomataModel.
							self needRebuild: false
							"self buildWithSpecLayout: self class defaultSpe" ].
					self needRebuild: false
					"self buildWithSpecLayout: self class defaultSpec" ] ]