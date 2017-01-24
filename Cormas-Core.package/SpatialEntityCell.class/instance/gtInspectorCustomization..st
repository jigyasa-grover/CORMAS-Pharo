customization
gtInspectorCustomization: composite
	<gtInspectorPresentationOrder: -10>
	^ composite table
		title: 'Spatial Entity Cell';
		display: [ {
			('id' -> self id asString).
			('self' -> self asString).
			('state' -> self state asString).
			('coordinates' -> self coordinates asString).
			('neighbourhood' -> self orderedNeighbourhood asString).
			('occupants' -> self theOccupants asString)
			} ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value