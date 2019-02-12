configuration pane - interaction
buildHaltAfterCaptureIn: tab
	tab transmit
		to: #haltAfterCapture;
		andShow: [ :a | 
			| browser |
			browser := a tabulator
				title: 'Halt After Capture';
				with: [ :layout | 
					layout
						column: #checkBoxHAC;
						column: #dropListHAC ].
			browser transmit
				to: #checkBoxHAC;
				andShow: [ :b | 
					b morph
						morph: [ :morphPresentation | 
							| checkBox |
							checkBox := CheckboxMorph
								on: minerConfiguration
								selected: #haltAfterCapture
								changeSelected: #haltAfterCapture:.
							checkBox label: 'Halt after:'.
							checkBox ] ].
			browser transmit
				to: #dropListHAC;
				andShow: [ :b | 
					b morph
						morph: [ :morphPresentation | 
							| dropList |
							dropList := DropListMorph
								on: minerConfiguration
								list: (1 to: 20)
								selected: #haltAfterSize
								changeSelected: #haltAfterSize:.
							dropList ] ] ]