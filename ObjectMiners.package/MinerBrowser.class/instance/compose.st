building
compose
	| pager |
	self updateMinersList.
	pager := self pager.
	pager fixedSizePanes: 1.
	pager showFirst: [ :a | self buildMinersListIn: a ].
	pager
		show: [ :a :col | 
			self selectedMiner: col.
			minerConfiguration := selectedMiner configuration.
			self buildConfigurationLayoutIn: a.
			self buildCaptureVisualizationIn: a ]