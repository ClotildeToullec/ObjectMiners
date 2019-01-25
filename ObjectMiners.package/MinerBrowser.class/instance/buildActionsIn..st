building - configuration
buildActionsIn: tab
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
						ifNotEmpty: [ selectedMiner configuration addTransformation: (newAction name: name) ].
					presentation update ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Add';
				act: [ :presentation | 
					presentation selection
						ifNotNil: [ | name |
							name := self
								requestActionRename: presentation selection name.
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
					name := self
						requestActionRename: presentation selection name.
					name ifNotEmpty: [ presentation selection name: name ].
					presentation update ]
					entitled: 'Rename';
				selectionAct: [ :presentation | 
					selectedMiner configuration transformations
						remove: presentation selection
						ifAbsent: [  ].
					presentation update ]
					entitled: 'Remove' ].
	tab transmit
		to: #selectedAction;
		from: #actions;
		andShow: [ :a :transfo | 
			| script |
			script := a pharoScript.
			script
				title: 'Edit action';
				smalltalkClass: [ Object ];
				variableBindings: [ selectedMiner collector installer reifications
						collect: [ :reif | reif -> reif ] ];
				display: (transfo source ifNil: [ '' ]);
				selectionAct: [ :thePane | 
					| src |
					src := (thePane pane port: #text) value.
					transfo source: src.
					thePane clearUserEdits.
					selectedMiner configuration
						compileTransformationsWith: selectedMiner collector installer reifications.
					a update ]
					on: $s
					entitled: 'Accept'.
			collectorAnnouncer
				when: SelectedReificationsHaveChanged
				do: [ script
						resetBindings;
						variableBindings: [ :bindings | 
							bindings
								addAll: [ selectedMiner collector installer reifications
										collect: [ :reif | reif -> reif ] ] ].
					script update ] ]