context
recordOldValue: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #oldValue ] "Safety but should not be present"
		ifFalse: [ context remove: #oldValue ]