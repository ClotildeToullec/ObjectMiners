visualization pane
buildNodesVsualizationIn: tab
	tab transmit
		to: #itemNodes;
		andShow: [ :a | 
			a title: 'Capture points'.
			a fastList display: selectedMiner collector collectPoints ].
	tab transmit
		from: #itemNodes;
		to: #captureTime;
		andShow: [ :a :collectPoint | selectedMiner collector inspect.
"			| itemsByTime |
			itemsByTime := (selectedMiner collector omniscientCollectedItems select: [ :item | item node == collectPoint ])
				sorted: [ :item1 :item2 | item1 timestamp < item2 timestamp ].
			a title: 'Time'.
			a fastList
				display: itemsByTime;
				format: [ :item | item timestamp print24 ].
			a shouldValidate: true" ].
	self buildSourceIn: tab