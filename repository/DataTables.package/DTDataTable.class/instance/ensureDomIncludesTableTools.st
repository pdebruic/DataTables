extensions
ensureDomIncludesTableTools
	| dom |
	dom := self optionAt: 'dom'.
	dom isNil
		ifTrue: [ self dom: 'Tlfrtip' ]
		ifFalse: [ 
			('*T*' match: dom)
				ifFalse: [ self dom: 'T', dom ] ]