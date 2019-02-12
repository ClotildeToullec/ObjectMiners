context
recordSender: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #sender ] "Safety but should not be present"
		ifFalse: [ context remove: #sender ]