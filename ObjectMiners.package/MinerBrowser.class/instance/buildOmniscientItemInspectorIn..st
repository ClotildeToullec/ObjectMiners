building - visualization
buildOmniscientItemInspectorIn: tab
	tab transmit
		from: #subexpressions;
		to: #itemInspector;
		when:[:item| item notNil];
		andShow: [ :a :item | 
			| object |
			object := item node isVariable
				ifTrue: [ item oldValue ]
				ifFalse: [ item collectedObject ifNil: [ item sourceObject ifNil: [ item newValue ] ] ].
			a tabulator
				title: object printString;
				with: [ :browser | 
					browser row: #inspectedItem.
					browser transmit
						to: #inspectedItem;
						andShow: [ :b | 
							b pager
								fixedSizePanes: 1;
								showFirst: [ :x | x fastList display: (Array with: object) ];
								show: [ :composite :e | e gtCollectorRawIn: composite ] ] ].
			self buildMetadataInspectorIn: a for: item ]