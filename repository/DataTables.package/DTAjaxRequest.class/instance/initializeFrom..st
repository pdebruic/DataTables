initializing
initializeFrom: fields 
	
	self draw: (fields at: 'draw' ifAbsent: [ 1]) asNumber asInteger.
	self start: (fields at: 'start' ifAbsent: [ 0 ]) asNumber asInteger + 1.
	self length: (fields at: 'length' ifAbsent: [-1]) asNumber asInteger.
	self search: (fields at: 'search[value]' ifAbsent: ['']).
	self initializeColumnsFrom: fields
	
