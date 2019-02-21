api-capture
setCondition: condition
	| collectorConditions |
	collectorConditions := OrderedCollection new.
	condition source ifNotEmpty: [ collectorConditions add: condition ].
	collector configuration conditions: collectorConditions