building - visualization
highlightItemSegmentIn: tab
	tab transmit
		from: #subexpressions;
		to: #itemSource;
		andShow: [ :a :bitItem | 
			bitItem
				ifNotNil: [ self buildStackedItemSegmentFor: bitItem node.
					self nodeVisualization: bitItem node in: a ];
				ifNil: [ self buildSourceIn: tab ] ]