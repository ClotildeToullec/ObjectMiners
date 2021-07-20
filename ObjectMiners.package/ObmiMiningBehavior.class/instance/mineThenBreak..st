mining
mineThenBreak: anArrayOfReifications

	<debuggerCompleteToSender>
	(self mine: anArrayOfReifications) ifNil: [ ^ self ].
	captureCount := captureCount + 1.
	captureCount
	>= anArrayOfReifications first configuration breakAfterCount 
		ifFalse: [ ^ self ].
		
		self flag: 'We should provide a dedicated view in the new spec debugger :)'.
"	CollectPointInspector
		node: anArrayOfReifications third
		collector: anArrayOfReifications first."
	Halt now