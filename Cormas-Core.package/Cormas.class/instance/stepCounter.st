aspects
stepCounter
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^stepCounter isNil
		ifTrue: [stepCounter := 0 asValueHolder]
		ifFalse: [stepCounter]