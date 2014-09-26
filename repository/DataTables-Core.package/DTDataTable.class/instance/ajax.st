private
ajax
	"Sets the url of receiver ajax data source."

	^self options at: 'ajax' ifAbsentPut: [DTAjax context: self renderContext]
	