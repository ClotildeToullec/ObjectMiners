tests - mining
testMineWithTransformations
	|transformations|
	transformations := OrderedCollection new.
	transformations add: (CollectEvaluation new name: 'a'; block: [ :a| a ]; yourself).	
	transformations add:  (CollectEvaluation new name: 'b'; block: [ :a :b| b ]; yourself).
	collector configuration transformations: transformations.
	
	miningBehavior mine: rawData last in: collector withReifications: rawData.	
	transformations:= collector records first transformations.
	
	self assert: (transformations at: 'a') identicalTo: rawData first.
	self assert: (transformations at: 'b') identicalTo: rawData second