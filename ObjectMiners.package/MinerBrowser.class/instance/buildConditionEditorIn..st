configuration pane - conditions
buildConditionEditorIn: tab
	tab transmit
		from: #conditions;
		to: #selectedCondition;
		andShow: [ :a :cond | 
			| script |
			script := a pharoScript.
			script
				title: 'Edit condition';
				smalltalkClass: [ Object ];
				variableBindings: [ selectedMiner collector installer reifications
						collect: [ :reif | reif -> reif ] ];
				display: (cond source ifNil: [ '' ]);
				selectionAct: [ :thePane | 
					| src |
					src := (thePane pane port: #text) value.
					cond source: src.
					thePane clearUserEdits.
					selectedMiner configuration
						compileConditionsWith: selectedMiner collector installer reifications.
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