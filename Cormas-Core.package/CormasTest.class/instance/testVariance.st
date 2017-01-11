tests
testVariance
	| aCollection |
	aCollection := #(1 2 3).
	self assert: (Cormas variance: aCollection)  = (2/3) asFloat