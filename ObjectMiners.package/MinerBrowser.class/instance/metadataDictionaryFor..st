building - visualization
metadataDictionaryFor: item
	| metadata |
	metadata := Dictionary new.
	selectedMiner configuration reifications
		do: [ :reif | 
			(#(#object #class #value) includes: reif)
				ifFalse: [ metadata at: reif put: (reif value: item) ].
			reif = #object
				ifTrue: [ metadata at: reif put: item objectReification ].
			reif = #class
				ifTrue: [ metadata at: reif put: item sourceObjectClass ] ].
	^ metadata