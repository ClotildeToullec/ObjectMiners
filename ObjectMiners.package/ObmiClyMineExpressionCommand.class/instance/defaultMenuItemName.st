accessing
defaultMenuItemName
	sourceNode isMethod ifTrue:[^'Mine objects returned by method'].
	^'Mine objects returned by expression'