context
recordObject: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #object ] "Safety but should not be present"
		ifFalse: [ context remove: #object ]