context
recordName: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #name ] "Safety but should not be present"
		ifFalse: [ context remove: #name ]