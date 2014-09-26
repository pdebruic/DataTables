accessing
sortOrder
	^self parameters at: 'sortOrder' ifAbsent: [ 0 ]