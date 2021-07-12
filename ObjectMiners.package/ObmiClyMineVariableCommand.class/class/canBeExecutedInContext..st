activation
canBeExecutedInContext: aBrowserContext

	| node |
	^ self isAbstract not and: [ 
		  node := aBrowserContext selectedSourceNode.
		  node isVariable and: [ self canMineVariable: node variable ] ]