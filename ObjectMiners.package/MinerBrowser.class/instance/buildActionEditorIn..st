configuration pane - actions
buildActionEditorIn: tab
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