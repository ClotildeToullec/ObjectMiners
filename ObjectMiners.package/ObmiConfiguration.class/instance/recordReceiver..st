context
recordReceiver: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #receiver ] "Safety but should not be present"
		ifFalse: [ context remove: #receiver ]