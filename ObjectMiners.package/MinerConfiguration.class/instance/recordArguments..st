context
recordArguments: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #arguments ] "Safety but should not be present"
		ifFalse: [ context remove: #arguments ]