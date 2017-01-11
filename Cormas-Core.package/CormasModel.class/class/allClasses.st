managing classes
allClasses
	"return all the Entity classes of the model (except the classes that inheriting from Msg and other classes like Interface etc"

	| collection |
	collection := self package classes select: [ :cl | cl cormasHelper isTypeEntityClass ].
	collection remove: CMEntity ifAbsent: [ nil ].
	^ collection