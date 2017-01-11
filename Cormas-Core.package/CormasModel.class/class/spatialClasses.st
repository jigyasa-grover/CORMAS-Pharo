managing classes
spatialClasses
	"return a collection of spatial classes of the model"

	^ self allClassesInPackage select: [ :aClass | aClass inheritsFrom: SpatialEntityCell ]