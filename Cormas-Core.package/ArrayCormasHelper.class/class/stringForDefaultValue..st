helping
stringForDefaultValue: aDefaultValue
	"return a string that is used to save a default value depending on its type"
	
	^'Array withAll: ' , aDefaultValue asString