api-capture
recordStrategy: strategy withContext: aBoolean
	"strategy: String, specifies the record strategy to use when capturing an object.
recordContext: boolean, specifies if captured context elements should be recorded as well"

	strategy = #weakReference
		ifTrue: [ collector installer behavior useWeakRefStorage ].
	strategy = #strongReference
		ifTrue: [ collector installer behavior useStrongRefStorage ].
	strategy = #deepCopy
		ifTrue: [ collector installer behavior useDeepCopyStorage ].
	recordContext := aBoolean