installing
installMiner
	"Missing : replayRecord: ; setCondition: ; setAction: ; haltAfterSize ? ; "

	selectedMiner
		captureHistoryOfSize: minerConfiguration historySize
			loop: minerConfiguration historyLoop;
		captureStack: minerConfiguration stackSize;
		recordIntermediateObjects: minerConfiguration recordIntermediateObjects;
		recordStrategy: minerConfiguration recordStrategy withContext: true;
		haltAfterCapture: minerConfiguration haltAfterSize;
		install; inspect