api-reaching
reachInstVar: varName fromClass: className withOption: anOption
	"Specifies an instance variable to reach in the control flow of the program"

	collector := Collector
		collectInstVarNamed: varName
		inClass: className.
	option := anOption.
	"Options : 'read' , 'write' or 'all'"