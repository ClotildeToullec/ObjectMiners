Interaction
getHistory: size
	"size: number of recorded objects to recover from the history of captured objects"

	| history |
	history := OrderedCollection new.
	1 to: size do: [ :i | history add: (collector omniscientCollectedItems at: i) ].
	^ history