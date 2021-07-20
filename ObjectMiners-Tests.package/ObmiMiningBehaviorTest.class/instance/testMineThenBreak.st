tests - mining
testMineThenBreak
	rawData addFirst: collector.
	
	collector configuration breakAfterCount: 0.
	self should:[miningBehavior mineThenBreak: rawData] raise: Halt.	
	self assert: collector records size equals: 1.
	
	collector configuration breakAfterCount: 10.
	self shouldnt:[miningBehavior mineThenBreak: rawData] raise: Halt.
	self assert: collector records size equals: 2