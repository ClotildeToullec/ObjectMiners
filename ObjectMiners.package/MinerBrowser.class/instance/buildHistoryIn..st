configuration pane - miner
buildHistoryIn: tab
	tab transmit
		to: #history;
		andShow: [ :a | 
			| browser |
			browser := a tabulator
				title: 'History';
				with: [ :layout | 
					layout
						column: #checkBox;
						column: #field ].
			browser transmit
				to: #checkBox;
				andShow: [ :b | 
					b morph
						morph: [ :morphPresentation | 
							| checkBox |
							checkBox := CheckboxMorph
								on: minerConfiguration
								selected: #wrapHistory
								changeSelected: #wrapHistory:.
							checkBox label: 'Wrap History'.
							checkBox ] ].
			browser transmit
				to: #field;
				andShow: [ :b | b text display: [ minerConfiguration historySize ] ] ]