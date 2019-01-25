building - configuration
requestActionRename: aPreviousName
	| name transfoNames |
	name := UIManager default
		request: 'Transformation name'
		initialAnswer: aPreviousName.
	(name isNil or: [ name isEmpty ])
		ifTrue:
			[ UIManager default alert: 'You entered no name' title: 'Invalid Name'.
			^ '' ].
	transfoNames := selectedMiner configuration transformations
		collect: [ :transfo | transfo name ].
	(transfoNames includes: name)
		ifTrue: [ UIManager default
				alert: 'This transformation name already exists'
				title: 'Invalid Name'.
			^ '' ].
	^ name