as yet unclassified
gtInspectorCustomization: composite
	<gtInspectorPresentationOrder: -10>
	^ composite table
		title: 'Spatial Entity Cell';
		display: [ {
			"'id' -> self id asString."
			"'biomass' -> self biomass asString."
			} ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value.