main menu
mineInstVarInContext: aClySugsMethodContext
	| nodes node miner |
	"remote ifNotNil: [ ^ remote collectInstVarInContext: aClySugsMethodContext]."
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aClySugsMethodContext.
	nodes first == nodes last
		ifFalse: [ ^ self inform: 'Unable to find the object: selection may be too large' ].
	node := nodes first.
	(node isVariable and: [ node isTemp not ])
		ifFalse: [ ^ self inform: 'Selection does not refer to an instance variable' ].
	miner := (ObjectMiner new reachInstVar: node name fromClass: node methodNode methodClass withOption: 'all' ).
	MinerBrowser newForMiner: miner