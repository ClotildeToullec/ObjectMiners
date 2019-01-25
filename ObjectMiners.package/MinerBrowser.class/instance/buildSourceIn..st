building - visualization
buildSourceIn: tab
	tab transmit
		from: #itemNodes;
		to: #itemSource;
		andShow: [ :a :collectionPoint | 
			self buildItemSegmentFor: collectionPoint.
			self nodeVisualization: collectionPoint in: a ]