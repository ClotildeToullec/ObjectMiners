visualization pane
buildMetadataInspectorIn: a for: item
	| metadata |
	metadata := self metadataDictionaryFor: item.
	selectedMiner collector configuration transformations
		do: [ :transfo | 
			metadata
				at: transfo name
				put: (item transformations at: transfo name ifAbsent: [ 'Not available' ]) ].
	a tabulator
		title: 'Meta data';
		with: [ :browser | 
			browser column: #inspectedMetaData.
			browser transmit
				to: #inspectedMetaData;
				andShow: [ :b | 
					b pager
						fixedSizePanes: 1;
						showFirst: [ :c | 
							c fastTable
								display: [ metadata values ];
								column: 'Metadata'
									evaluated: [ :each | metadata keyAtValue: each ];
								column: 'Value' evaluated: [ :each | each ] ];
						show: [ :c :reif | metadata gtCollectorRawIn: c ] ] ]