configuration pane
buildMinerCapturePointIn: tab
	tab transmit
		to: #collectorDefinition;
		andShow: [ :a | selectedMiner collector buildInComposite: a ]