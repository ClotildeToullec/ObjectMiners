building - configuration
buildConfigurationPageIn: aPresentation
	| tab |
	tab := aPresentation tabulator.
	tab act: [ self update ] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Refresh'.
	tab title: 'Configuration of : ' , miner collector printDefinition.
	tab
		with: [ :browser | 
			browser
				row: [ :r | 
					r
						column: #collectorDefinition;
						column: #reificationsList ]
					span: 1;
				row: [ :r | 
					r
						column: #conditions;
						column: #selectedCondition ]
					span: 1;
				row: [ :r | 
					r
						column: #transformations;
						column: #selectedTransformation ]
					span: 1 ].
	tab transmit
		to: #collectorDefinition;
		andShow: [ :a | miner collector buildInComposite: a ].
	self buildReificationsIn: tab.
	self buildConditionsIn: tab.
	self buildTransformationsIn: tab