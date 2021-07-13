configuration pane
buildInstallButtonIn: tab
	tab transmit
		to: #installButton;
		andShow: [ :a | 
			a morph
				morph: [ :morphPresentation | 
					| button |
					button := SimpleButtonMorph new.
					button
						layoutPolicy: RowLayout new;
						listDirection: #leftToRight;
						wrapCentering: #center;
						listCentering: #center;
						cellInset: 5 @ 0;
						layoutInset: 5 @ 0.
					button on: #mouseUp send: #installMiner to: self.
					button label: 'Install' ] ]