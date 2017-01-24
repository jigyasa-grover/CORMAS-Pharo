as yet unclassified
animateSimulation
	| anim |
	anim := RTActiveAnimation new.
	anim
		blockToExecute: [ aModel runStep.
			view elements do: #updateShape ].
	anim inView: view.
	view signalUpdate