accessing
spatialEntitiesClassNames
	
	| collec |
	collec := OrderedCollection new.
	self environment allClasses
		do:
			[:aClass | 
			(aClass inheritsFrom: CMSpatialEntity)
				ifTrue: [collec add: aClass name asString]].
	^collec