as yet unclassified
gtInspectorCustomization: composite
	<gtInspectorPresentationOrder: -10>
	^ composite table
		title: 'CMECEC Vegetation Unit';
		display: [ {
			'biomass' -> self biomass asString.
			"'package name' -> self name.
			'repository url' -> self repositoryUrl."
			"'description' -> (self description ifNil: [ '' ]).
			'contact info' -> (self contactInfo ifNil: [ '' ]).
			'keywords' -> (Character space join: self keywords)."
			} ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value.