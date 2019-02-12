configuration pane - configuration
buildContextListIn: tab
	tab transmit
		to: #reificationsList;
		andShow: [ :b | 
			b tabulator
				title: 'Capture Context';
				with: [ :layout | 
					allReifications do: [ :reif | layout row: reif asSymbol ].
					allReifications
						do: [ :reif | 
							layout transmit
								to: reif asSymbol;
								andShow: [ :a | 
									a morph
										morph: [ :morphPresentation | 
											| checkBox |
											checkBox := CheckboxMorph
												on: minerConfiguration
												selected: #recordIntermediateObjects
												changeSelected: #recordIntermediateObjects:.
											checkBox label: reif asString.
											checkBox ] ] ] ] ]