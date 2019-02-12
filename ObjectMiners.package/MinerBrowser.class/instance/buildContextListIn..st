configuration pane - configuration
buildContextListIn: tab
	tab transmit
		to: #reificationsList;
		andShow: [ :b | 
			b tabulator
				title: 'Capture Context';
				with: [ :layout | 
					layout
						column:
								[ :c | 1 to: self availableReifications size / 2 do: [ :i | c row: (self availableReifications at: i) ] ];
						column: [ :c | 
							self availableReifications size / 2 + 1 to: self availableReifications size
							do: [ :i | c row: (self availableReifications at: i) ] ].
					self availableReifications
						do: [ :reif | 
							layout transmit
								to: reif asSymbol;
								andShow: [ :a | 
									a morph
										morph: [ :morphPresentation | 
											| checkBox setter getter|
											setter := 'record', reif asString capitalized.
											getter := setter, ':'.
											checkBox := CheckboxMorph
												on: minerConfiguration 
												selected: setter asSymbol
												changeSelected: getter asSymbol.
											checkBox label: reif asString.
											checkBox ] ] ] ] ].
	self flag: 'Announce change in context'