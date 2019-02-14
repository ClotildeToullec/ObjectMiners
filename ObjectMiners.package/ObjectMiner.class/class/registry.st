accessing
registry
	^ registry ifNil: [ registry := OrderedCollection new ]