initialization
initialize
	super initialize.
	configuration := CollectorConfiguration new.
	historySize := 1.
	historyLoop := true.
	haltAfterCapture := 0.
	stackSize := 10.
	recordStrategy := 'deepCopy'.	"default?"
	recordContext := true.
	recordIntermediateObjects := false