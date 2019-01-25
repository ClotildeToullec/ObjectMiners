building - configuration
requestUniqueActionName
	| name actionNames |
	name := UIManager default request: 'Action name'.
	(name isNil or: [ name isEmpty ])
		ifTrue:
			[ UIManager default alert: 'You entered no name' title: 'Invalid Name'.
			^ '' ].
	actionNames := selectedMiner configuration transformations
		collect: [ :action | action name ].
	(actionNames includes: name)
		ifTrue: [ UIManager default
				alert: 'This action name already exists'
				title: 'Invalid Name'.
			^ '' ].
	^ name