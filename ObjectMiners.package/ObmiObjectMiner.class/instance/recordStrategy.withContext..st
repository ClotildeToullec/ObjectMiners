api-capture
recordStrategy: strategy withContext: aBoolean
	"strategy: String, specifies the record strategy to use when capturing an object.
recordContext: boolean, specifies if captured context elements should be recorded as well"

	strategy = #weakReference
		ifTrue: [ collector installer behavior recordWeakReferences ].
	strategy = #strongReference
		ifTrue: [ collector installer behavior recordStrongReferences ].
	strategy = #deepCopy
		ifTrue: [ collector installer behavior recordDeepCopies ].
	recordContext := aBoolean