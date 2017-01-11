specs
defaultSpec 
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :tcol|
					tcol
						add: #label;
						add: #button;
						add: #diagram ].