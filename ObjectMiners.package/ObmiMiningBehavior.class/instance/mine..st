mining
mine: anArrayOfReifications

	| collector object |
	collector := anArrayOfReifications first.
	object := anArrayOfReifications second.

	(collector mustCollect: anArrayOfReifications) ifFalse: [ 
		collector discardDeepRecords.
		^ nil ].
	self
		mine: object
		in: collector
		withReifications: anArrayOfReifications