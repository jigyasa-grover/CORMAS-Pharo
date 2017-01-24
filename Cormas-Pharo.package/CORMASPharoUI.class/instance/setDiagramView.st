interface
setDiagramView
diagram
		script: [ :aView :canvas | 
			self view: aView.
			aView @ RTDraggableView ]