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
						column: #dropListHAC span: 2;
						column: #labelHAC ].
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
							checkBox label: 'Halt after '.
							checkBox ] ].
			browser transmit
				to: #dropListHAC;
				andShow: [ :b | 
					b dropDownList
						display: [ 0 to: 100 ];
						selectedIndex: 1 ].
			browser transmit
				to: #labelHAC;
				from: #dropListHAC;
				andShow: [ :b | 
					| text label |
					text := TextMorph new.
					label := b morph morph: text.
					label
						display: [ :num | 
							text
								contents:
									(num < 2
										ifTrue: [ 'capture' ]
										ifFalse: [ 'captures' ]).
							text
								font: StandardFonts defaultFont;
								margins: 7;
								wrapFlag: true ].
					label ] ]