record - strategies
recordStrategy
	^ recordStrategy ifNil:[recordStrategy := self class defaultRecordStrategy]