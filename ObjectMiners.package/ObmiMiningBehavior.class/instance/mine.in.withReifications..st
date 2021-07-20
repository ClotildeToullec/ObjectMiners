mining
mine: anObject in: aCollector withReifications: anArrayOfReifications
	| item |
	item := self recordStrategy new.
	item rawData: anArrayOfReifications.
	item collector: aCollector.
	item minedObject: anObject.
	item reificationSpec: (aCollector reifications ifEmpty: [aCollector baseReifications]).
	((aCollector reifications includes: #context)
		and: [ aCollector metaController stackSize > 0 ])
		ifTrue: [ item copyContext: item context ].
	aCollector applyTransformationsTo: item from: anArrayOfReifications.
	aCollector deepMine: item