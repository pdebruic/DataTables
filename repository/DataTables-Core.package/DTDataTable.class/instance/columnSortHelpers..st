sorting
columnSortHelpers: anArray
	"Send in an array like #(nil nil 'dom-checkbox' 'dom-text' nil 'dom-select') and this will pick the right orderDataType helper to allow you to sort on columns that are html inputs.
	
	
	See: http://www.datatables.net/examples/plug-ins/dom_sort.html
	
	
	If you're going to use this you need to load the code that provides the sort values prior to instantiating your table"

	anArray notNil
		ifTrue: [ self ensureColumnArrayOfSize: anArray size.
			anArray
				doWithIndex: [ :eachSortType :index | 
					| columnDetails |
					eachSortType notNil
						ifTrue: [ columnDetails := self columns at: index.
							columnDetails at: 'orderDataType' put: eachSortType asString ] ] ]