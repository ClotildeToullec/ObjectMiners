tests - mining
testMineWithConditions
	|conditions|
	conditions := OrderedCollection new.
	conditions add: (CollectEvaluation new name: 'a'; block: [ :a| true ]; yourself).	
	conditions add: (CollectEvaluation new name: 'b'; block: [ :a :b| true ]; yourself).
	collector configuration conditions: conditions.
	
	self assert: collector records isEmpty.
	
	rawData addFirst: rawData last.
	rawData addFirst: collector.	
	miningBehavior mine: rawData.	
	
	self assert: collector records size equals: 1.
	
	conditions add: (CollectEvaluation new name: 'b'; block: [ :a :b| false ]; yourself).
	miningBehavior mine: rawData.	
	self assert: collector records size equals: 1