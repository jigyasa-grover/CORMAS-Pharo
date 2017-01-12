specs
defaultSpec 
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :tcol|
					tcol
						add: #label;
						add: #button;
						add: #menu height: self toolbarHeight;
						add: #diagram ].