Object Capture
setCondition: sourceCode
	| newCondition |
	newCondition := CollectEvaluation new.
	configuration addCondition: newCondition
	"name of a condition : CollectorsBrowser>>requestUniqueConditionName "