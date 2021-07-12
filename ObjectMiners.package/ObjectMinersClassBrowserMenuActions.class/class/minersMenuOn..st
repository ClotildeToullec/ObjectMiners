main menu
minersMenuOn: aBuilder
"	<RubSmalltalkCodeMenu>
	<contextMenu>"
	aBuilder
		item: 'Object Miners';
		selector: #value;
		target: [  ];
		keyText: 't ';
		order: 0;
		"iconName: #history;"
		icon: ObjectMinersIcons minersMenuIcon;
		with: [ self buildMinersMenuOn: aBuilder ].
		