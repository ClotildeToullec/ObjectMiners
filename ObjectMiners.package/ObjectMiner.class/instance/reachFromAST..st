api-reaching
reachFromAST: anASTNode
	collector := Collector collectValue: anASTNode.
	availableReifications
		addAll: {#arguments . #receiver . #selector . #sender}