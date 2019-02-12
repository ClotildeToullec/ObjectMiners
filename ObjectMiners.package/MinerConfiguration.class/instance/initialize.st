initialization
initialize
	wrapHistory := false.
	historySize := 1000.
	haltAfterCapture := false.
	haltAfterSize := 1.
	captureStack := true.
	stackSize := 20.
	recordStrategy := 'Weak Reference'.
	recordStrategyList := {'Weak Reference' . 'Strong Reference'. 'Deep Copy'} asOrderedCollection.
	recordIntermediateObjects := false