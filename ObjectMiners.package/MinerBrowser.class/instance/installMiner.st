installing
installMiner
	"Missing : replayRecord: ; haltAfterSize ? "

	minerConfiguration
		compileAction;
		compileCondition.
	selectedMiner
		captureHistoryOfSize: minerConfiguration historySize
			loop: minerConfiguration wrapHistory;
		captureStack: minerConfiguration stackSize;
		recordIntermediateObjects: minerConfiguration recordIntermediateObjects;
		recordStrategy: minerConfiguration recordStrategy asCamelCase uncapitalized asSymbol
			withContext: true;
		haltAfterCapture: minerConfiguration haltAfterSize;
		setCondition: minerConfiguration condition;
		setAction: minerConfiguration action;
		install;
		inspect