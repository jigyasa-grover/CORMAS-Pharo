probes - recording
setDataStructures
	
	self class activeProbes isEmpty
		ifFalse:
			[self data
				at: self class name
				put: Dictionary new.
			self class activeProbes
				do:
					[:p | 
					(self data at: self class name)
						at: p
						put: OrderedCollection  new]].
	self class allClasses
		do:
			[:c | 
			"c = CMECECVegetationUnit ifTrue: [ self halt ]."
			c activeProbes isEmpty
				ifFalse:
					[self data
						at: c name
						put: Dictionary new.
					c activeProbes
						do:
							[:p | 
							(self data at: c name)
								at: p
								put: Dictionary new]]]