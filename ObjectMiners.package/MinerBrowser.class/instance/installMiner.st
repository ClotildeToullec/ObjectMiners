installing
installMiner
	"Missing : replayRecord:"
	minerConfiguration
		compileAction;
		compileCondition.
	selectedMiner
	"Configuration"
		recordIntermediateObjects: minerConfiguration recordIntermediateObjects;
		recordStrategy: minerConfiguration recordStrategy asCamelCase uncapitalized asSymbol
			withContext: true; "captureContext isNotNil ?"
		captureContext: minerConfiguration context;
		captureStack: minerConfiguration stackSize;
		captureHistoryOfSize: minerConfiguration historySize
			loop: minerConfiguration wrapHistory;
		setCondition: minerConfiguration condition;
		"Interaction"
		haltAfterCapture: minerConfiguration haltAfterCapture size: minerConfiguration haltAfterSize ;
		setAction: minerConfiguration action;
		"Install"
		install;
		inspect