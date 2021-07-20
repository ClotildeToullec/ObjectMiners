tests - record strategies
testRecordStrongReferences
	miningBehavior recordStrongReferences.
	self assert: miningBehavior recordStrategy equals: ObmiMiningBehavior strongReferencesRecordStrategy 