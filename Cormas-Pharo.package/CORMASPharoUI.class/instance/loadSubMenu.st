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
						action: [ self loadSimulationWithModel: CMECECModel ] ].
			group
				addItem: [ :item | 
					item
						name: 'CM FireAutomata Model';
						icon: (self iconNamed: #nautilusIcon);
						shortcut: $o meta;
						action: [ self loadSimulationWithModel: CMFireAutomataModel ] ] ]