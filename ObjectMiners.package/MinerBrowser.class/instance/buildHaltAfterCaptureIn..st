configuration pane - interaction
buildHaltAfterCaptureIn: tab
	"This method uses morphic and glamour updates in a non aesthetic way. Still, it's working"

	tab transmit
		to: #haltAfterCapture;
		andShow: [ :a | 
			| browser checkBox |
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
						onChangeOfPort: #selection
							act: [ :list | 
							minerConfiguration haltAfterSize: list selection.
							minerConfiguration
								haltAfterCapture:
									(list selection = 0
										ifTrue: [ false ]
										ifFalse: [ true ]).
							checkBox updateSelection ];
						selectedIndex: minerConfiguration haltAfterSize + 1 ].	"There must be a better way"
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
								margins: 7;
								wrapFlag: true ].
					label ] ]