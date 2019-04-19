installation
install
	collector metaController: self.
	recordIntermediateObjects
		ifTrue: [ collector reinstall ]
		ifFalse: [ collector reinstallWeakWith: collector configuration ].