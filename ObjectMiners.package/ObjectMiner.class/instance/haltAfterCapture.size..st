api-interaction
haltAfterCapture: aBoolean size: size
	"size not used yet"

	collector configuration
		breakAfterCollect:
			(haltAfterSize == 0
				ifTrue: [ false ]
				ifFalse: [ aBoolean ])