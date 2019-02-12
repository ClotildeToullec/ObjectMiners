installation
install
	recordIntermediateObjects
		ifTrue: [ collector reinstall ]
		ifFalse: [ collector reinstallWeakWith: collector configuration ].