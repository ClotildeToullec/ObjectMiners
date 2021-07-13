configuration pane
buildMinerCapturePointIn: tab
	tab transmit
		to: #reaching;
		andShow: [ :a | selectedMiner collector buildInComposite: a ]