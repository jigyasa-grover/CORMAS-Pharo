aspects
initMethod
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^initMethod isNil
		ifTrue: [initMethod := String new asValue]
		ifFalse: [initMethod]