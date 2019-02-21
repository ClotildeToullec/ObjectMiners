configuration pane - configuration
buildContextListIn: tab
	tab transmit
		to: #reificationsList;
		andShow: [ :b | 
			b tabulator
				title: 'Capture Context';
				with: [ :layout | 
					layout
						column: [ :c | 
							c
								row: (self availableReifications at: 1);
								row: (self availableReifications at: 2) ];
						column: [ :c | 
							c
								row: (self availableReifications at: 3);
								row: (self availableReifications at: 4) ];
						column: [ :c | 
							c
								row: (self availableReifications at: 5);
								row: (self availableReifications at: 6) ].
					self availableReifications size % 2 == 0
						ifFalse: [ layout
								column: [ :c | 
									c
										row: (self availableReifications at: 7);
										row: #empty ] ].
					self availableReifications
						do: [ :reif | 
							layout transmit
								to: reif;
								andShow: [ :a | 
									a morph
										morph: [ :morphPresentation | 
											| checkBox setter getter |
											setter := String
												streamContents: [ :s | 
													s
														nextPutAll: 'record';
														nextPutAll: reif asString capitalized ].
											getter := String
												streamContents: [ :s | 
													s
														nextPutAll: setter;
														nextPutAll: ':' ].
											checkBox := CheckboxMorph
												on: minerConfiguration
												selected: setter asSymbol
												changeSelected: getter asSymbol.
											checkBox label: reif asString.
											checkBox ];
										morphicSelectionAct: [ :i | self inspect ] entitled: '' ] ] ].
			self flag: 'Todo : Better management for availableReification size' ]