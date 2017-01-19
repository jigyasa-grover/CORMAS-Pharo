visualization
visualize: aCMModel on: aUnit with: aCriteria
	
	| data g ds c |
	
	data := Array new: (aCMModel perform: aUnit) size. 
	data := (aCMModel perform: aUnit) collect: [:entity | entity perform: aCriteria ].
	
	c := RTComposer new.
	
	"First visualization"
	g := RTGrapher new.
	g extent: World width/1.4 @ World height/1.4.
	g view: c view.
	
	ds := RTData new.
	ds interaction popup.
	ds barShape color: Color blue.
	ds points: data.
	
	g add: ds.
	g maxXFromDataSets.
	g maxYFromDataSets.
	"g axisX noTick; noLabel."
	g build.
	c group: #graph.

	"Second visualization"
	"b := RTPieBuilder new.
	b view: c view.
	b interaction popup.
	b objects: data.
	b slice: #yourself.
	b labeled.
	b build.
	c group: #pie."

	"Layouting"
    "c move: #graph onTheLeftOf: #pie."

	RTMetricNormalizer new view: c view;
                 objects: data;
                 distinctColor.
	
	c open.