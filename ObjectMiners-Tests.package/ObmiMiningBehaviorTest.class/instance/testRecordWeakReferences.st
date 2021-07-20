tests - record strategies
testRecordWeakReferences
	miningBehavior recordWeakReferences.
	self assert: miningBehavior recordStrategy equals: ObmiMiningBehavior weakReferencesRecordStrategy 