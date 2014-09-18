accessing
initializeColumnsFrom: fields
	columns := SortedCollection new.
	(fields keys select: [ :each | each beginsWith: 'columns[' ])
		do: [ :field | 
			| colNumber column |
			colNumber := self extractIndexFrom: field.
			column := self columnAt: colNumber ifAbsent: [ columns add: (DTColumnParameter number: colNumber) ].
			column setParameter: field from: fields ].
	self initializeColumnSortingFrom: fields