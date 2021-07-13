context
recordClass: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #class ] "Safety but should not be present"
		ifFalse: [ context remove: #class ]