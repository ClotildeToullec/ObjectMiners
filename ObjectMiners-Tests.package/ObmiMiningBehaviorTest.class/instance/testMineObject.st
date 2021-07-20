tests - mining
testMineObject	
	|record|
	collector addReifications: reifications.
	miningBehavior mine: rawData last in: collector withReifications: rawData.
	
	self assert: collector records size equals: 1.
	record := collector records first.	
	self assert: record collector identicalTo: collector.
	self assert: record minedObject identicalTo: rawData second
	