tests
testLogisticGrowth
	self assert: (Cormas logisticIncrease: 1.0 r: 2.0 K: 4.0) = 1.5.
	self assert: (Cormas logisticGrowth: 1.0 r: 2.0 K: 4.0) = 2.5