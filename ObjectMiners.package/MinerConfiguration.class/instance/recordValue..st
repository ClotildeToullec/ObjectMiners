context
recordValue: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #value ] "Safety but should not be present"
		ifFalse: [ context remove: #value ]