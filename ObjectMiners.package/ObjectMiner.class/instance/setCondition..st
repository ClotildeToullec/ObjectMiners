api-capture
setCondition: sourceCode
	| newCondition |
	newCondition := CollectEvaluation new.
	configuration addCondition: newCondition