tests - mining
testDeepMine	
	rawData addFirst: collector.
	miningBehavior deepMine: rawData.			
	self assert: collector deepCollectedItems size equals: 1.
	self assert: collector deepCollectedItems first rawData identicalTo: rawData