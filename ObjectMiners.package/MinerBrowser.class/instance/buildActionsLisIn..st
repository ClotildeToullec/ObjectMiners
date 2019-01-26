configuration pane - actions
buildActionsLisIn: tab
	tab transmit
		to: #actions;
		andShow: [ :a | 
			a fastList
				title: 'Actions';
				display: selectedMiner configuration transformations;
				updateOn: SelectedReificationsHaveChanged
					from: [ collectorAnnouncer weak ];
				act: [ :presentation | 
					| newAction name |
					newAction := CollectEvaluation new.
					name := self requestUniqueActionName.
					name
						ifNotEmpty: [ selectedMiner configuration
								addTransformation: (newAction name: name) ].
					presentation update ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Add';
				act: [ :presentation | 
					presentation selection
						ifNotNil: [ | name |
							name := self requestActionRename: presentation selection name.
							name ifNotEmpty: [ presentation selection name: name ].
							presentation update ] ]
					icon: GLMUIThemeExtraIcons glamorousEdit
					entitled: 'Rename';
				act: [ :presentation | 
					selectedMiner configuration transformations
						remove: presentation selection
						ifAbsent: [  ].
					presentation update ]
					icon: GLMUIThemeExtraIcons glamorousTrash
					entitled: 'Remove';
				selectionAct: [ :presentation | 
					| name |
					name := self requestActionRename: presentation selection name.
					name ifNotEmpty: [ presentation selection name: name ].
					presentation update ]
					entitled: 'Rename';
				selectionAct: [ :presentation | 
					selectedMiner configuration transformations
						remove: presentation selection
						ifAbsent: [  ].
					presentation update ]
					entitled: 'Remove' ].
	self buildActionEditorIn: tab