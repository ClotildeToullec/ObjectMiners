context
recordObject: aBoolean

	self deprecated:
		'Miner configuration should not now anything about the ui configuring it'.
	aBoolean
		ifTrue: [ "Safety but should not be present" 
		context addIfNotPresent: #object ]
		ifFalse: [ context remove: #object ].
	browser resetBindings.
	self flag:
		'This is a way to update the browser when a reification is selected. The configuration should not know the browser. The updtate does not work anyway.'