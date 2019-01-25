building - configuration - miner
buildCaptureStackIn: tab
	tab transmit
		to: #captureStack;
		andShow: [ :a | 
			a dropDownList
				title: 'Capture stack' ;
				display: (1 to: 20);
				selectedIndex: 10 ]