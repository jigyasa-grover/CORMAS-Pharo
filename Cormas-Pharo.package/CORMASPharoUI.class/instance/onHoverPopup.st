interface
onHoverPopup
	| popup |
	popup := RTPopup new.
	popup text: [ :object | object asPopupText ].
	elements @ popup