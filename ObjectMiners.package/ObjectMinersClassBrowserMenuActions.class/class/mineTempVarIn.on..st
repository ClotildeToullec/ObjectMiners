main menu
mineTempVarIn: context on: aBuilder
	aBuilder
		item: 'Temporary';
		target: self;
		selector: #mineTemporaryInContext:;
		arguments: (Array with: context)