api-reaching
reachTempVar: varName inMethod: methodName fromClass: className withOption: anOption
	"Specifies a temporary variable to reach in the control flow of the program"

	collector := Collector
		collectTempVarNamed: varName
		inMethodNamed: methodName
		inClass: className.
	option := anOption.
	"Options : read , write or all (String)"