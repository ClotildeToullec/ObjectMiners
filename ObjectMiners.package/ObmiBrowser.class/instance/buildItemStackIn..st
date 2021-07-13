visualization pane
buildItemStackIn: tab
	tab transmit
		from: #captureTime;
		to: #subexpressions;
		andShow: [ :a :item | 
			| itemList |
			itemList := item backInTimeItems copy.
			itemList add: item.
			item
				ifNotNil: [ a title: 'Captured sub-expressions'.
					a fastList
						tagsStyle: #greenRoundedButton;
						display: itemList;
						format: [ :bitItem | 
							| subNode |
							subNode := bitItem node.
							subNode source copyFrom: subNode start to: subNode stop ];
						tags: [ :bitItem | 
							bitItem oldValue = bitItem newValue
								ifFalse: [ 'value change' ]
								ifTrue: [ #() ] ] ] ].
	self highlightItemSegmentIn: tab