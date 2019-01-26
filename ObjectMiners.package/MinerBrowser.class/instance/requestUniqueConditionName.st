configuration pane - conditions
requestUniqueConditionName
	| name conditionsNames |
	name := UIManager default request: 'Condition name'.
	(name isNil or: [ name isEmpty ])
		ifTrue:
			[ UIManager default alert: 'You entered no name' title: 'Invalid Name'.
			^ '' ].
	conditionsNames := selectedMiner configuration transformations
		collect: [ :cond | cond name ].
	(conditionsNames includes: name)
		ifTrue: [ UIManager default
				alert: 'This condition name already exists'
				title: 'Invalid Name'.
			^ '' ].
	^ name