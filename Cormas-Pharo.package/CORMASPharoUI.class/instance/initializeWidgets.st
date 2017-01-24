initialization
initializeWidgets
	manager := self newTabManager.
	manager whenTabSelected: [ self updateTitle ].
	self populateTabManager.
	menu := MenuModel new.
	self populateMenu.
	menu applyTo: self.
	diagram := self instantiate: RoassalModel.
	self setDiagramView