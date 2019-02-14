main menu
mineInstVarIn: context on: aBuilder
	aBuilder
		item: 'Instance Variable';
		target: self;
		selector: #mineInstVarInContext:;
		arguments: (Array with: context)