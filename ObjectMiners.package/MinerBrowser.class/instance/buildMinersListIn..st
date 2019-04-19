building
buildMinersListIn: aPresentation
	| list |
	list := aPresentation fastList.
	list
		act: [ self updateMinersList.
			self update ]
		icon: GLMUIThemeExtraIcons glamorousRefresh
		entitled: 'Refresh'.
	list
		updateOn: ObjectCollectorHasChanged
		from: [ CollectorAnnouncer default weak ].
	list
		selectionAct: [ :presentation | presentation selection inspect ]
		entitled: 'Inspect'.
	list
		selectionAct: [ :presentation | 
			presentation selection uninstall.
			self updateMinersList.
			self update ]
		entitled: 'Uninstall'.
	list display: miners.
	list format: [ :objminer | objminer printDefinition ].
	list tags: [ :objminer | objminer collector type ]