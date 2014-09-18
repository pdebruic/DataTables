uploaded metadata
EstonianLang
	^ WAFileLibraryResource
		filepath: 'Estonian.lang'
		mimeType: (WAMimeType main: 'application' sub: 'json')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #EstonianLangContent)