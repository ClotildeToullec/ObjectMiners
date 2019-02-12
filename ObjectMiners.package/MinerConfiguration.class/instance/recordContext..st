context
recordContext: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #context ] "Safety but should not be present"
		ifFalse: [ context remove: #context ]