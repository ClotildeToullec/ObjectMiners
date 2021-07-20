update
resetBindings
	bindings := OrderedCollection new.
	bindings add: #value -> #value.
	bindings
		addAll: (minerConfiguration context mine: [ :reif | reif -> reif ]).
	announcer announce: ObmiBindingsUpdate.