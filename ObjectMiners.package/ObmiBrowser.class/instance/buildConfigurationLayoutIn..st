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
				column: #minerConfiguration;
				column: [ :c | 
					c
						row: #reaching span: 4;
						row: #minerInteractions span: 3;
						row: #installButton span: 1 ] ].
	self buildConfigurationPresentationsIn: tab