interface
onHoverPopup: onElements
	| popup |
	popup := RTPopup new.
	popup text: [ :object | object asPopupText ].
	onElements @ popup