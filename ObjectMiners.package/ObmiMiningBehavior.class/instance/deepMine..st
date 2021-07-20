mining
deepMine: anArrayOfReifications
	| collector item |
	collector := anArrayOfReifications first.
	item := self recordStrategy new.
	item rawData: anArrayOfReifications.
	collector deepCollectItem: item