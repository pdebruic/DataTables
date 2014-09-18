options
languageSet: aSymbol

	self optionAt: 'language' put: {'url' -> (DTLanguagesLibrary / (aSymbol asLowercase asCamelCase,  #Lang) asSymbol) asString } asDictionary.
	
