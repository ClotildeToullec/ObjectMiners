api-interaction
setAction: action
	| collectorActions |
	collectorActions := OrderedCollection new.
	action source ifNotEmpty: [ collectorActions add: action ].
	collector configuration transformations: collectorActions