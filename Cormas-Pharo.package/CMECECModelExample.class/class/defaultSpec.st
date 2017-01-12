specs
defaultSpec 
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :tcol|
					tcol
						add: #label height: self toolbarHeight;
						add: #button height: self toolbarHeight;
						add: #menu height: self toolbarHeight;
						add: #diagram ].