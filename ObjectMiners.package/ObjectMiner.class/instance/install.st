Installation
install
	collector configuration: configuration. "Does a collector need to know the configuration ?"
	recordContext
		ifTrue: [ collector reinstall ]
		ifFalse: [ collector reinstallWeakWith: configuration ]