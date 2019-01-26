initialization
initialize
		historySize := 1.
		historyLoop :=  false.
		haltAfterCapture := false.
		haltAfterSize := 1.
		stackSize := 10.
		recordStrategy := 'Weak Reference'.
		recordStrategyList := {'Weak Reference' . 'Strong Reference' . 'Deep Copy'} asOrderedCollection.
		recordIntermediateObjects := false