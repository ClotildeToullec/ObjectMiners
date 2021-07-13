update
resetBindings
	bindings := OrderedCollection new.
	bindings add: #value -> #value.
	bindings
		addAll: (minerConfiguration context collect: [ :reif | reif -> reif ]).
	announcer announce: ObmiBindingsUpdate.