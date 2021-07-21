tests - mining
testMineWithoutConditions
	
	self assert: collector records isEmpty.
	
	rawData addFirst: rawData last.
	rawData addFirst: collector.	
	miningBehavior mine: rawData.	
	
	self assert: collector records size equals: 1