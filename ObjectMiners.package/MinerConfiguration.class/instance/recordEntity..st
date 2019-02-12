context
recordEntity: aBoolean
	aBoolean
		ifTrue: [ context addIfNotPresent: #entity ] "Safety but should not be present"
		ifFalse: [ context remove: #entity ]