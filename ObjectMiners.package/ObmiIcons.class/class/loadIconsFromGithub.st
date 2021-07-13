as yet unclassified
loadIconsFromGithub
	| minersIconFilename |
	minersIconFilename := 'miners-tools-2.png' asFileReference.
	minersIconFilename exists
		ifFalse: [ ZnClient new
				url:
					'https://raw.githubusercontent.com/ClotildeToullec/ObjectMiners/master/icons/miner-tool-2.png';
				downloadTo: minersIconFilename ].
	minersMenuIcon := ImageReadWriter
		formFromFileNamed: 'miners-tools-2.png'