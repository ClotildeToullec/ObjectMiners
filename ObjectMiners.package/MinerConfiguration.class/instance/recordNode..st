context
recordNode: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #node ] "Safety but should not be present"
		ifFalse: [ context remove: #node ]