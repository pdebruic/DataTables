as yet unclassified
sortColumns
	^(self columns select: [ :each | each hasSorting ]) asSortedCollection: [:a :b | a sortOrder <= b sortOrder ]