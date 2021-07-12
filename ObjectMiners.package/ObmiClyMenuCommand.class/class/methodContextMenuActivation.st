activation
methodContextMenuActivation

	<classAnnotation>
	^ CmdContextMenuActivation
		  byItemOf: ObmiClyMenuGroup
		  order: self contextMenuOrder
		  for: ClyMethod asCalypsoItemContext