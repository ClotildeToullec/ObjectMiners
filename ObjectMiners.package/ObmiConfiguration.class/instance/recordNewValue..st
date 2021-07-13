context
recordNewValue: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #newValue ] "Safety but should not be present"
		ifFalse: [ context remove: #newValue ]