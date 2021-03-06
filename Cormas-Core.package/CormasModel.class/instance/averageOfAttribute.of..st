+ utilities - population metrics
averageOfAttribute: att of: aCollecOrClass
	"Purpose: returns the average value of an attribute for a collection of entities (aCollecOrClass)
Argument: aCollecOrClass can be a collection of entities or the name of class, in which case all the entities of that class (including subclasses entities) will be included in the collection
Examples: self averageOfAttribute: #age of: Person
			 self averageOfAttribute: #age of: (self theBirds)"
	
	^Cormas
		average:
			((self allTheEntitiesOfClassOrCollec: aCollecOrClass) asOrderedCollection
				collect: [:e | e perform: att])