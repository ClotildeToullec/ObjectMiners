configuration pane - configuration
buildConditionIn: tab
	tab transmit
		to: #condition;
		andShow: [ :a :cond | 
			| script |
			script := a pharoScript.
			script
				title: 'Condition';
				smalltalkClass: [ Object ];
				variableBindings: bindings;
				display: (minerConfiguration condition source ifNil: [ '' ]);
				selectionAct: [ :thePane | 
					| src |
					src := (thePane pane port: #text) value.
					minerConfiguration condition source: src.
					minerConfiguration compileCondition.
					thePane clearUserEdits.
					a update ]
					on: $s
					entitled: 'Accept'.
			"Update on change in context selection - Does not work"
			announcer
				when: BindingsUpdate
				do: [ script
						resetBindings;
						variableBindings: bindings;
						updateVariableBindings.
					script update ] ]