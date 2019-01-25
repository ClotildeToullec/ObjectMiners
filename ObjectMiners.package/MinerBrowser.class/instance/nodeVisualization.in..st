building - visualization
nodeVisualization: node in: a
	| pharoMethod |
	a title: (node methodNode methodClass name , ' >>') asString.
	pharoMethod := a pharoMethod.
	pharoMethod
		smalltalkClass: [ node methodNode methodClass ];
		display: node methodNode source.
	stackedItemSegment ifNotNil: [ pharoMethod addTextSegment: stackedItemSegment ].
	itemSegment ifNotNil: [ pharoMethod addTextSegment: itemSegment ]