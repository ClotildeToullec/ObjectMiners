testing
canBeExecutedInContext: aSourceCodeContext

	^ self isAbstract not and: [ 
		  super canBeExecutedInContext: aSourceCodeContext ]