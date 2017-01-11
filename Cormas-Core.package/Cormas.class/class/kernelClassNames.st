accessing
kernelClassNames
	
	| collec |
	collec := OrderedCollection new.
	self environment allClassNames
		do: [:s | collec add: (s tokensBasedOn: $.) last].
	^collec