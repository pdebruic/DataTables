initialization
printOn: aStream

	super printOn: aStream.
	aStream 
		nextPutAll: '[#';
		nextPutAll: self number greaseString;
		space;
		nextPutAll: self name greaseString;
		nextPutAll: ']'