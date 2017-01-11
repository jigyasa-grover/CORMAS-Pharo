- accessing - methods & classes
genericEntities
	
	| kernel |
	kernel := CMEntity environment.
	^CMEntity withAllSubclasses select: [:cl | cl environment = kernel]