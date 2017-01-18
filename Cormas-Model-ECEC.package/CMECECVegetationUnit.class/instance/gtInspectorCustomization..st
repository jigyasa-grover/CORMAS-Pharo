as yet unclassified
gtInspectorCustomization: composite
	<gtInspectorPresentationOrder: -10>
	^ composite table
		title: 'CMECEC Vegetation Unit';
		display: [ {
			'ID' -> self id asString.
			'Biomass' -> self biomass asString.
			'PoV Atrributes' -> self pov asString.
			
			"neighbourID := Array new: self orderedNeighbourhood size. 
	      neighbourID := self orderedNeighbourhood collect: [:entity | entity id ].
	
	      neighbourBiomass := Array new: self orderedNeighbourhood size. 
	      neighbourBiomass := self orderedNeighbourhood collect: [:entity | entity biomass ]."
			} ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value.