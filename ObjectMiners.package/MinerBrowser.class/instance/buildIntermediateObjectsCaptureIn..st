building - configuration - miner
buildIntermediateObjectsCaptureIn: tab
	tab transmit
		to: #intermediateObjectsCapture;
		andShow: [ :a | 
			a morph
				morph: [ :morphPresentation | 
					| checkBox |
					checkBox := CheckboxMorph
						on: selectedMiner
						selected: #recordIntermediateObjects
						changeSelected: #recordIntermediateObjects:.
					checkBox label: 'Record Intermediate Objects'.
					checkBox ] ]