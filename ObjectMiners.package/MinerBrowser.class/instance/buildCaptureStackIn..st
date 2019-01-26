configuration pane - miner
buildCaptureStackIn: tab
	tab transmit
		to: #captureStack;
		andShow: [ :a | 
			a morph
				morph: [ :morphPresentation | 
					| dropList |
					dropList := DropListMorph
						on: minerConfiguration
						list: (1 to: 20)
						selected: #stackSize
						changeSelected: #stackSize:.
					dropList ];
				title: 'Capture stack' ]