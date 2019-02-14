main menu
buildMinersMenuOn: aBuilder
	| context |
	context := SugsAbstractContext contextFor: aBuilder model.
	self mineInstVarIn: context on: aBuilder.	
	self mineTempVarIn: context on: aBuilder.
	self mineResultIn: context on: aBuilder