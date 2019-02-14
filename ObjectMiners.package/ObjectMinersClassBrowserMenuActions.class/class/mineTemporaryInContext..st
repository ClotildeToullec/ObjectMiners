main menu
mineTemporaryInContext: aClySugsMethodContext
	| nodes node miner |
	"remote ifNotNil: [ ^ remote collectTemporaryInContext: aClySugsMethodContext forScope: aScope]."
	nodes := SugsMenuBuilder
		findBestNodeIntervalFor: aClySugsMethodContext.
	nodes first == nodes last
		ifFalse: [ ^ self
				inform: 'Unable to find the object: selection may be too large' ].
	node := nodes first.
	(node isVariable and: [ node isTemp ])
		ifFalse: [ ^ self inform: 'Selection does not refer to a temporary variable' ].
	miner := ObjectMiner new
		reachTempVar: node name
		inMethod: node methodNode selector
		fromClass: node methodNode methodClass
		withOption: 'all'.
	MinerBrowser newForMiner: miner