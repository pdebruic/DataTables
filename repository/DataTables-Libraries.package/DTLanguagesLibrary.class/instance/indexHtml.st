uploaded metadata
indexHtml
	^ WAFileLibraryResource
		filepath: 'index.html'
		mimeType: (WAMimeType main: 'text' sub: 'html')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #indexHtmlContent)