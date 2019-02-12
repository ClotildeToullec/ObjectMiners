configuration pane - configuration
buildCaptureStackIn: tab
	tab transmit
		to: #captureStack;
		andShow: [ :a | 
			| browser |
			browser := a tabulator
				title: 'Stack';
				with: [ :layout |
					layout
						column: #checkBox;
						column: #field ].
			browser transmit
				to: #checkBox;
				andShow: [ :b | 
					b morph
						morph: [ :morphPresentation | 
							| checkBox |
							checkBox := CheckboxMorph
								on: minerConfiguration
								selected: #captureStack
								changeSelected: #captureStack:.
							checkBox label: 'Capture'.
							checkBox ] ].
			browser transmit
				to: #field;
				andShow: [ :b | b text display: [ minerConfiguration stackSize ] ] ]