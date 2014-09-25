sorting
ensureColumnArrayOfSize: anArraySize
	| currentColumns |
	currentColumns := self columns.
	currentColumns isNil
		ifTrue: [ 
			| colArray |
			colArray := OrderedCollection new.
			anArraySize timesRepeat: [ colArray add: Dictionary new ].
			self columns: colArray ]
		ifFalse: [ 
			currentColumns size < anArraySize
				ifTrue: [ anArraySize - currentColumns size timesRepeat: [ currentColumns add: Dictionary new ] ] ]