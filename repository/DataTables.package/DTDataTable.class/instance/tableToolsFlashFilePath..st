extensions
tableToolsFlashFilePath: aPath
	| dict |
	dict := Dictionary new.
	dict at: 'sSwfPath' put: aPath.
	self ensureDomIncludesTableTools.
	self optionAt: 'tableTools' put: dict