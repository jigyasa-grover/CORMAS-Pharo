accessing
socialEntitiesClassNames
	
	| collec |
	collec := OrderedCollection new.
	collec add: 'Agent'.
	self environment allClasses
		do:
			[:aClass | (aClass inheritsFrom: Agent) ifTrue: [collec add: aClass name asString]].
	^collec