Installation
reachTempVar: varName inMethod: methodName fromClass: className withOption: option
	"Specifies a temporary variable to reach in the control flow of the program"

	collector := Collector
		collectTempVarNamed: varName
		inMethodNamed: methodName
		inClass: className
	"Options : read , write or all (String)"