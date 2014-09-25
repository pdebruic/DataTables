options
includeAllInLengthMenu
	"the first array is the number of rows to show.  The second array is the labels"

	self optionAt: 'lengthMenu' put: (Array with: #(10 25 50 -1) with: #(10 25 50 'All'))