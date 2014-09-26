uploaded metadata
PolishLang
	^ WAFileLibraryResource
		filepath: 'Polish.lang'
		mimeType: (WAMimeType main: 'application' sub: 'json')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #PolishLangContent)