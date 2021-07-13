initialization
initialize
	super initialize.
	configuration := ObmiConfiguration new.
	historySize := 1.
	historyLoop := true.
	stackSize := 20.
	recordContext := true.
	recordIntermediateObjects := false.
	availableReifications := OrderedCollection
		newFrom: {#object . #class . #context}.
	self registry add: self