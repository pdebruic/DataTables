as yet unclassified
extractIndexFrom: field
	^ (field copyFrom: (field indexOf: $[) + 1 to: (field indexOf: $]) - 1) asNumber + 1