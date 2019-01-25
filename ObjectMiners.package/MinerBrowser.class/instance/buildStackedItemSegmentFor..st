building - visualization
buildStackedItemSegmentFor: node
	stackedItemSegment := DBActivatorHighlightSegmentMorph from: node start to: node stop + 1.
	stackedItemSegment highlightSubCollectedNode: node