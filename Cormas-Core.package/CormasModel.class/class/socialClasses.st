managing classes
socialClasses
	"return a collection of social classes of the model"

	^ self allClassesInPackage select: [ :e | e inheritsFrom: CMAgent ]