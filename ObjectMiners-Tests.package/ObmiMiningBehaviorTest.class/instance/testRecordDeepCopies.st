tests - record strategies
testRecordDeepCopies
	miningBehavior recordDeepCopies.
	self assert: miningBehavior recordStrategy equals: ObmiMiningBehavior deepCopyRecordStrategy 