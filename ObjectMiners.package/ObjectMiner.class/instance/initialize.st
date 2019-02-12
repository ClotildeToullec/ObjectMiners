initialization
initialize
	super initialize.
	configuration := MinerConfiguration new.
	historySize := 1.
	historyLoop := true.
	stackSize := 10.
	recordContext := true.
	recordIntermediateObjects := false