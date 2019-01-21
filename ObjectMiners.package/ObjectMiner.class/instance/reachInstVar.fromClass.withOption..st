Installation
reachInstVar: varName fromClass: className withOption: option
	"Specifies an instance variable to reach in the control flow of the program"

	collector := Collector
		collectInstVarNamed: varName
		inClass: className
	"Options : 'read' , 'write' ou 'all' . Changer l'option du metalink ?"