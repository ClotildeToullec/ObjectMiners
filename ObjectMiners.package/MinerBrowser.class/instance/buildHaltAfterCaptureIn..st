building - configuration - miner
buildHaltAfterCaptureIn: tab
	tab transmit
		to: #checkBox;
		andShow: [ :a | 
			a morph
				morph: [ :morphPresentation | 
					| checkBox |
					checkBox := CheckboxMorph new.
					checkBox label: 'Halt after capture'.
					checkBox ] ].
	tab transmit
		to: #droplist;
		andShow: [ :a | 
			a dropDownList
				display: (1 to: 20);
				selectedIndex: 10 ]