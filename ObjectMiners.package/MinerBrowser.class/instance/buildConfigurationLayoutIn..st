configuration pane
buildConfigurationLayoutIn: aPresentation
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
						column: #installButton ]
					size: 30;
				row: [ :r | 
					r
						column: #recordStrategy;
						column: #captureStack;
						column: #history;
						column: #haltAfterCapture]
					size: 65;
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
	self buildConfigurationPresentationsIn: tab