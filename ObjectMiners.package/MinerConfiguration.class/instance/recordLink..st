context
recordLink: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #link ] "Safety but should not be present"
		ifFalse: [ context remove: #link ]