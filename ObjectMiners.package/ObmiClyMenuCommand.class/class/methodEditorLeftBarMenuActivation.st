activation
methodEditorLeftBarMenuActivation

	<classAnnotation>
	^ CmdTextLeftBarMenuActivation
		  byItemOf: ObmiClyMenuGroup
		  order: self contextMenuOrder
		  for: ClyMethodSourceCodeContext