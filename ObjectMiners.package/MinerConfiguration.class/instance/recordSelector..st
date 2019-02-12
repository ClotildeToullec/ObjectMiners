context
recordSelector: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #selector ] "Safety but should not be present"
		ifFalse: [ context remove: #selector ]