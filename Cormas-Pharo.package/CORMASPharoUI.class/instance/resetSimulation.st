execution
resetSimulation
	anim
		blockToExecute: [ aModel initSimulation. aModel runStep.
			view elements do: #updateShape ].
	anim inView: view.
	view signalUpdate