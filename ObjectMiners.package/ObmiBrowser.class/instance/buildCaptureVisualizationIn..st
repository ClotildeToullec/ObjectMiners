visualization pane
buildCaptureVisualizationIn: aPresentation
	| tab |
	tab := aPresentation tabulator.
	tab title: 'Capture points of : ' , selectedMiner printDefinition.
	tab act: [ self update ] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Refresh'.
	tab
		with: [ :browser | 
			browser
				row: [ :r | 
					r
						column: #itemNodes span: 2;
						column: #captureTime span: 1;
						column: #subexpressions span: 2;
						column: #itemSource span: 3 ]
				span: 4.
			browser row: #itemInspector span: 4 ].
	self buildNodesVsualizationIn: tab.
	self buildItemStackIn: tab.
	self buildOmniscientItemInspectorIn: tab