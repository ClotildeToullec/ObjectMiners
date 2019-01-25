update
updateMinersList
	miners ifNotNil: [ miners removeAll ].
	miners ifNil: [ miners := OrderedCollection new ].
	miners addAll: ObjectMiner allInstances