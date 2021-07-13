installation
uninstall
	collector uninstall.
	self registry
		remove: self
		ifAbsent:
			[ "If the miner is not registered, then it should just be garbage collected" ]