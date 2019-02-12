configuration pane - conditions
buildConditionsListIn: tab
	tab transmit
		to: #condition;
		andShow: [ :a | 
			a fastList
				title: 'Conditions';
				display: selectedMiner configuration conditions;
				act: [ :presentation | 
					| newCond name |
					newCond := CollectEvaluation new.
					name := self requestUniqueConditionName.
					name
						ifNotEmpty: [ selectedMiner configuration addCondition: (newCond name: name) ].
					presentation update ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Add';
				act: [ :presentation | 
					presentation selection
						ifNotNil: [ | name |
							name := self
								requestConditionRename: presentation selection name.
							name ifNotEmpty: [ presentation selection name: name ].
							presentation update ] ]
					icon: GLMUIThemeExtraIcons glamorousEdit
					entitled: 'Rename';
				act: [ :presentation | 
					selectedMiner configuration conditions
						remove: presentation selection
						ifAbsent: [  ].
					presentation update ]
					icon: GLMUIThemeExtraIcons glamorousTrash
					entitled: 'Remove';
				selectionAct: [ :presentation | 
					| name |
					name := self requestConditionRename: presentation selection name.
					name ifNotEmpty: [ presentation selection name: name ].
					presentation update ]
					entitled: 'Rename';
				selectionAct: [ :presentation | 
					selectedMiner configuration removeCondition: presentation selection.
					presentation update ]
					entitled: 'Remove' ].
	self buildConditionEditorIn: tab