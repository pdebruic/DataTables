accessing
initializeColumnSortingFrom: fields

	(fields keys select: [ :each | each beginsWith: 'order[' ])
		do: [ :field | 
			| column |
			('*[column]' match: field)
				ifTrue: [ 
					column := self
						columnAt: (fields at: field ifAbsent: [ 0 ]) asNumber asInteger + 1
						ifAbsent: [ self errorSortColumnNotDefined ].
					column sortOrder: (self extractIndexFrom: field).
					column sortDirection: (self sortDirectionOf: (self extractIndexFrom: field) in: fields) ] ]