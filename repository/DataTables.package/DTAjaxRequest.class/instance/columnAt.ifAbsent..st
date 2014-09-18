as yet unclassified
columnAt: anInteger ifAbsent: aBlock
	
	^self columns detect: [ :one | one number = anInteger ] ifNone: aBlock