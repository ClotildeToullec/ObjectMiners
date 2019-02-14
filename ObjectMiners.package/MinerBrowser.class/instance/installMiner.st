installing
installMiner
	minerConfiguration compileAction.
	minerConfiguration compileCondition.
	selectedMiner
		recordIntermediateObjects: minerConfiguration recordIntermediateObjects.
	selectedMiner
		recordStrategy: minerConfiguration recordStrategy asCamelCase uncapitalized asSymbol
		withContext: true.
	selectedMiner captureContext: minerConfiguration context.
	selectedMiner captureStack: minerConfiguration stackSize.
	selectedMiner
		captureHistoryOfSize: minerConfiguration historySize
		loop: minerConfiguration wrapHistory.
	minerConfiguration condition source
		ifNotEmpty: [ selectedMiner setCondition: minerConfiguration condition ].
	selectedMiner
		haltAfterCapture: minerConfiguration haltAfterCapture
		size: minerConfiguration haltAfterSize.
	minerConfiguration action source
		ifNotEmpty: [ selectedMiner setAction: minerConfiguration action ].
	selectedMiner install