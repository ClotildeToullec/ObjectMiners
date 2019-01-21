initialization
initialize
	super initialize.
	configuration := CollectorConfiguration new.
	recordStrategy := 'deepCopy'. "??"
	recordContext := true