actions
validateSaveToRSTRDC
	"This stub method was generated by UIDefiner"
	
	| l |
	l := List new.
	l add: fileFormat value.
	l add: fileTitle value printString.
	l add: refSystem value printString.
	l add: refUnits value.
	l add: unitDist value printString.
	l add: minX value printString.
	l add: maxX value printString.
	l add: minY value printString.
	l add: maxY value printString.
	l add: posnerror value.
	l add: resolution value printString.
	l add: minValue value printString.
	l add: maxValue value printString.
	l add: displayMin value printString.
	l add: displayMax value printString.
	l add: valueUnits value.
	l add: valueErrors value.
	l add: flagValue value.
	l add: flagDefn value.
	l add: legendCats value printString.
	self supervisor model saveAttributesRSTRDC: attributesSavedRSTRDC
		fileParameters: l.
	self closeRequest