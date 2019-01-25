building - configuration
buildConfigurationPageIn: aPresentation
	| tab |
	tab := aPresentation tabulator.
	tab
		act: [ self update ]
		icon: GLMUIThemeExtraIcons glamorousRefresh
		entitled: 'Refresh'.
	tab
		title: 'Configuration of : ' , selectedMiner collector printDefinition.
	tab
		with: [ :browser | 
			browser
				row: [ :r | 
					r
						column: #intermediateObjectsCapture;
						column: [ :c | 
							c
								row: [ :ro | 
									ro
										column: #checkBox;
										column: #droplist ] ] ]
					size: 30;
				row: [ :r | 
					r
						column: #recordStrategy;
						column: #captureStack ]
					span: 1;
				row: [ :r | 
					r
						column: #collectorDefinition;
						column: #reificationsList ]
					span: 2;
				row: [ :r | 
					r
						column: #conditions;
						column: #selectedCondition ]
					span: 1;
				row: [ :r | 
					r
						column: #actions;
						column: #selectedAction ]
					span: 1 ].
	tab transmit
		to: #collectorDefinition;
		andShow: [ :a | selectedMiner collector buildInComposite: a ].
	self buildMinerConfigurationsIn: tab.
	self buildReificationsIn: tab.
	self buildConditionsIn: tab.
	self buildActionsIn: tab