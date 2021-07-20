tests - mining
testMineWithContext	
	|context sender record recordedContext|
	reifications add: #context.
	collector addReifications: reifications.
	context := self exampleContext. 
	rawData add: context. 
	collector metaController stackSize: 2.
	miningBehavior mine: rawData last in: collector withReifications: rawData.
	
	self assert: collector records size equals: 1.
	record := collector records first.	
	self assert: record hasContext.
	self assert: record reificationSpec last equals: #context.
	
	sender := context sender.
	context privSender: nil.
	recordedContext := record rawData last.
	self assert: sender notNil.
	self assert: record context size equals: 2.
	self assert: record context first equals: context.
	self assert: record context second equals: sender
	
	
	
	
	
	
	