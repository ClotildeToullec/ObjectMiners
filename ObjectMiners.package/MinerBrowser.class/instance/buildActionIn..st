configuration pane - interaction
buildActionIn: tab
	tab transmit
		to: #action;
		andShow: [ :a | 
			| script |
			script := a pharoScript.
			script
				title: 'Action';
				smalltalkClass: [ Object ];
				variableBindings: [ minerConfiguration context collect: [ :reif | reif -> reif ] ];
				display: (minerConfiguration action source ifNil: [ '' ]);
				selectionAct: [ :thePane | 
					| src |
					src := (thePane pane port: #text) value.
					minerConfiguration action source: src.
					minerConfiguration compileAction.
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