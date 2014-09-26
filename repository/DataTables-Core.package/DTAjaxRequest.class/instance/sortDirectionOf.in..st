accessing
sortDirectionOf: index in: fields
	"Answer the sorting direction of column according to the parameters in fields.
	-1 for a descending direction and 1 for an ascending direction."

	^ (fields at: (self columnSortDirectionField: index) ifAbsent: [ 'asc' ]) = 'asc'
		ifTrue: [ 1 ]
		ifFalse: [ -1 ]