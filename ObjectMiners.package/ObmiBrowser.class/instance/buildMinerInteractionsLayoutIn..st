configuration pane - interaction
buildMinerInteractionsLayoutIn: tab
	tab transmit
		to: #minerInteractions;
		andShow: [ :a | 
			| subTab |
			subTab := a tabulator.
			subTab
				title: 'Interactions';
				with: [ :browser | 
					browser
						row: #haltAfterCapture size: 70;
						row: #action ].
			self buildMinerInteractionsIn: subTab ]