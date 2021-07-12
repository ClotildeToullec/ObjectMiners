activation
sourceCodeMenuActivation

	<classAnnotation>
	^ SycDebuggingMenuActivation
		  byItemOf: ObmiClyMenuGroup
		  order: self contextMenuOrder
		  for: ClyMethodSourceCodeContext