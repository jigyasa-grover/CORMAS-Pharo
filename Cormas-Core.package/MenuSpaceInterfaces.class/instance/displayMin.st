aspects
displayMin
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^displayMin isNil
		ifTrue: [displayMin := 0 asValue]
		ifFalse: [displayMin]