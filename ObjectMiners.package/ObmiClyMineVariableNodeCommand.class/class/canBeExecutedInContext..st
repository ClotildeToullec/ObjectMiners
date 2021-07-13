activation
canBeExecutedInContext: aBrowserContext

	| node |
	^ self isAbstract not and: [ 
		  aBrowserContext class ~= ClyFullBrowserMethodContext and: [ 
			  node := aBrowserContext selectedSourceNode.
			  node isVariable and: [ self canMineVariable: node variable ] ] ]