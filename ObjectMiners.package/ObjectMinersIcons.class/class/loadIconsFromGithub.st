as yet unclassified
loadIconsFromGithub
	| minersIconFilename |
	minersIconFilename := 'miners-tools.png' asFileReference.
	minersIconFilename exists
		ifFalse: [ ZnClient new
				url:
					'https://raw.githubusercontent.com/ClotildeToullec/ObjectMiners/master/icons/miner-tool.png';
				downloadTo: minersIconFilename ].
	minersMenuIcon := ImageReadWriter
		formFromFileNamed: 'miners-tools.png'