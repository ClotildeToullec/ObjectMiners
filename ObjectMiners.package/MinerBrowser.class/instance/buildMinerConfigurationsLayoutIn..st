configuration pane - configuration
buildMinerConfigurationsLayoutIn: tab
	tab transmit
		to: #minerConfiguration;
		andShow: [ :a | 
			| subTab |
			subTab := a tabulator.
			subTab title: 'Configuration'.
			subTab
				with: [ :browser | 
					browser
						row: #intermediateObjectsCapture size: 30;
						row: #recordStrategy size: 65;
						row: #reificationsList span: 5;
						row: #captureStack size: 70;
						row: #wrapHistory size: 70;
						row: #condition span: 1 ].
			self buildMinerConfigurationsIn: subTab ]