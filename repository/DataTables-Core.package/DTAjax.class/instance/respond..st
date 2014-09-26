private
respond: aBlock

     self requestContext respond: [ :response |
		| dtRequest  |
		dtRequest := DTAjaxRequest buildFrom: self requestContext request queryFields.
		[aBlock value: dtRequest] on: Error do: [:ex | dtRequest response errorMessage: ex description ].
		response
  			doNotCache;
     			contentType: (WAMimeType applicationJson charset: self requestContext handler charSet);
        		nextPutAll: (WAJsonCanvas builder render: [:json | json render: dtRequest response] )
		]