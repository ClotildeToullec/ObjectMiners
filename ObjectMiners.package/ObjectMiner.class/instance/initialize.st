initialization
initialize
	super initialize.
	configuration := CollectorConfiguration new.
	historySize := 1.
	historyLoop := true.
	stackSize := 20.
	recordStrategy := 'deepCopy'.	"default?"
	recordContext := true.
	recordIntermediateObjects := false