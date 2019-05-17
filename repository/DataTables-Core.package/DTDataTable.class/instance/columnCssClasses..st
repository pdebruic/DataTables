sorting
columnCssClasses: anArray
	"Send in an array like #(nil nil 'myClass' 'myClass1' nil 'myClass3') and this will ensure datatables uses those classes 
	
	
	See: https://datatables.net/reference/option/columns.className
	
"

	anArray notNil
		ifTrue: [ self ensureColumnArrayOfSize: anArray size.
			anArray
				doWithIndex: [ :eachSortType :index | 
					| columnDetails |
					eachSortType notNil
						ifTrue: [ columnDetails := self columns at: index.
							columnDetails at: 'className' put: eachSortType asString ] ] ]