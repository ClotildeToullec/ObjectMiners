tests - mining
testCollectDeepMineRecords	
	|tag record deepRecords|
	tag := Object new.
	collector deepCollectItem: tag.
	miningBehavior mine: rawData last in: collector withReifications: rawData.	
	record := collector records first.
	deepRecords := record backInTimeItems.
	
	self assert: deepRecords size equals: 1.
	self assert: deepRecords first identicalTo: tag.
	self assert: collector deepCollectedItems isEmpty