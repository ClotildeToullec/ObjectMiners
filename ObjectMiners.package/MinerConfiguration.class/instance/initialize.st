initialization
initialize
	wrapHistory := false.
	historySize := 1000.
	haltAfterCapture := false.
	haltAfterSize := 0.
	captureStack := true.
	stackSize := 20.
	recordStrategy := 'Weak Reference'.
	recordStrategyList := {'Weak Reference' . 'Strong Reference'.
	'Deep Copy'} asOrderedCollection.
	recordIntermediateObjects := false.
	condition := CollectEvaluation new.
	action := CollectEvaluation new.
	context := OrderedCollection new