Interaction
setAction: sourceCode
	"user defined action (String), using named arguments from the captured context reification array"

	| newAction |
	newAction := CollectEvaluation new.
	configuration addTransformation: newAction