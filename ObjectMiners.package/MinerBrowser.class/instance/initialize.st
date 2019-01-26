initialization
initialize
	super initialize.
	allReifications := #(#arguments #receiver #entity #link #name #oldValue #newValue #selector #sender #value #object #class).
	collectorAnnouncer := CollectorAnnouncer new.
	minerConfiguration := MinerConfiguration new.