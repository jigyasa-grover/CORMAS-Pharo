aspects
maxValue
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^maxValue isNil
		ifTrue: [maxValue := 0 asValue]
		ifFalse: [maxValue]