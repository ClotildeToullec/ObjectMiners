visualization pane - segments
buildItemSegmentFor: node
	itemSegment := DBActivatorHighlightSegmentMorph from: node start to: node stop + 1.
	itemSegment highlightForCollectPoint