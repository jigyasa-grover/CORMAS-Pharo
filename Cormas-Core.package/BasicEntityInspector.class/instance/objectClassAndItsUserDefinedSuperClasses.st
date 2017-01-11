access classes
objectClassAndItsUserDefinedSuperClasses
	
	| collec |
	collec := object class superClassesUntil: CMEntity.
	CormasModelOld allClasses
		do:
			[:c | 
			collec
				remove: c
				ifAbsent: []].
	collec remove: CMEntity.
	(object isKindOf: ArcEntity) ifTrue: [collec add: ArcEntity].
	(object isKindOf: NodeEntity) ifTrue: [collec add: NodeEntity].
	^collec