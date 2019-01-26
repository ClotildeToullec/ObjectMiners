configuration pane - miner
buildHistorySizeIn: tab
	tab transmit
		to: #historySize;
				andShow: [ :a | 
			| browser |
			browser := a tabulator
				title: 'History Size';
				with: [ :layout | 
					layout
						column: #checkBoxHS;
						column: #dropListHS ].
			browser transmit
				to: #checkBoxHS;
				andShow: [ :b | 
					b morph
						morph: [ :morphPresentation | 
							| checkBox |
							checkBox := CheckboxMorph
								on: minerConfiguration
								selected: #historyLoop
								changeSelected: #historyLoop:.
							checkBox label: 'Loop History'.
							checkBox ] ].
			browser transmit
				to: #dropListHS;
				andShow: [ :b | 
					b morph
						morph: [ :morphPresentation | 
							| dropList |
							dropList := DropListMorph
								on: minerConfiguration
								list: (1 to: 20)
								selected: #historySize
								changeSelected: #historySize:.
							dropList ] ] ].