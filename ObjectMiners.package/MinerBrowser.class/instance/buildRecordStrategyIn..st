building - configuration - miner
buildRecordStrategyIn: tab
	tab transmit
		to: #recordStrategy;
		andShow: [ :a | 
			a dropDownList
				title: 'Record Strategy';
				display: {'Weak Reference' . 'Strong Reference' . 'Deep Copy'};
				selectedIndex: 1 ]