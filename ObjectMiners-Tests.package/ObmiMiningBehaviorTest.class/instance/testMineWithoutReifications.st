tests - mining
testMineWithoutReifications	
	|record|
	miningBehavior mine: rawData last in: collector withReifications: rawData.
	
	self assert: collector records size equals: 1.
	record := collector records first.
	self assert: record class identicalTo: miningBehavior recordStrategy.
	self assertCollection: record rawData equals: rawData.
	self deny: record hasContext.
	self assertCollection: record reificationSpec equals: collector baseReifications 
	