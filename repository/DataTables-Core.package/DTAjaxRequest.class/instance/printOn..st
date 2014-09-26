as yet unclassified
printOn: aStream

	super printOn: aStream.
	aStream 
		nextPutAll: '(Draw #';
		nextPutAll: draw greaseString;
		nextPutAll: ' start: ';
		nextPutAll: start greaseString;
		nextPutAll: ' length: ';
		nextPutAll: length greaseString;
		nextPutAll: ')'