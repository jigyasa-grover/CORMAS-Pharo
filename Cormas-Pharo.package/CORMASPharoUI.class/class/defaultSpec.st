specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				add: #menu height: self toolbarHeight;
				add: #diagram;
				add: #manager height: 100 ];
			yourself 