uploaded metadata
imagesfaviconIco
	^ WAFileLibraryResource
		filepath: 'images/favicon.ico'
		mimeType: (WAMimeType main: 'image' sub: 'x-icon')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imagesfaviconIcoContent)