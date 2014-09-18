initialization
setParameter: aString from: aWARequestFields 
	
	| paramName |
	paramName := (aString copyFrom: (aString indexOf: $]) + 1 to: aString size).
	self parameters at: paramName put: (aWARequestFields at: aString)