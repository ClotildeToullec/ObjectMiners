configuration pane - configuration
buildRecordStrategyIn: tab
	tab transmit
		to: #recordStrategy;
		andShow: [ :a | 
			a morph
				morph: [ :morphPresentation | 
					| dropList |
					dropList := DropListMorph
						on: minerConfiguration
						list: #recordStrategyList
						selected: #recordStrategyIndex
						changeSelected: #recordStrategyFromIndex:.
					dropList ];
				title: 'Record Strategy' ]