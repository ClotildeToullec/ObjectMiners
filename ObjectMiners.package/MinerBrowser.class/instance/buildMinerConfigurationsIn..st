building - configuration - miner
buildMinerConfigurationsIn: tab
	self buildIntermediateObjectsCaptureIn: tab.
	self buildRecordStrategyIn: tab.
	self buildCaptureStackIn: tab.
	self buildHaltAfterCaptureIn: tab