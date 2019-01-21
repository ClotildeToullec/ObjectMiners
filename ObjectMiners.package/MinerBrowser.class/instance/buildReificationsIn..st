building - configuration
buildReificationsIn: tab
	tab transmit
		to: #reificationsList;
		andShow: [ :a | 
			a fastList
				title: 'Context';
				display: [ miner configuration reifications ];
				act: [ :presentation | 
					| availableReifs |
					availableReifs := allReifications asOrderedCollection.
					availableReifs removeAllFoundIn: miner collector installer baseReifications.
					((TickDialogWindow itemsList: availableReifs itemsHeaderName: 'Context' title: 'Select context entities') choose
						ifNil: [ #() ]) do: [ :reif | miner configuration addReification: reif ].
					miner install.
					presentation update.
					collectorAnnouncer announce: SelectedReificationsHaveChanged ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Select context entities';
				act: [ :presentation | 
					miner configuration reifications remove: presentation selection ifAbsent: [  ].
					miner install.
					presentation update.
					collectorAnnouncer announce: SelectedReificationsHaveChanged ]
					icon: GLMUIThemeExtraIcons glamorousTrash
					entitled: 'Remove' ]