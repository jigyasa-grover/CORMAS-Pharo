execution
animateSimulation
	anim := RTActiveAnimation new.
	"create a dictinary of ordered collection"
	anim
		blockToExecute: [ aModel runStep.	"for each probe, add the vale to the odered collection"
			view elements do: #updateShape ].
	anim inView: view.
	view signalUpdate