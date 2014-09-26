accessing
sortDirection
	^self parameters at: 'sortDirection' ifAbsent: [ 0 ]