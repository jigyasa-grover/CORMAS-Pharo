defaultParameters
defaultValueHolder
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^defaultValueHolder isNil
		ifTrue:
			[defaultValueHolder := 'number, string, boolean or ''random''' asValue]
		ifFalse: [defaultValueHolder]	"[defaultValueHolder := Object new asValue] "