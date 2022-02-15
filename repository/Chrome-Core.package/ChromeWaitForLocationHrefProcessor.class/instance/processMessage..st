accessing
processMessage: aMessageDictionary

	| aMethod |
	aMethod := aMessageDictionary at: 'method' ifAbsent: [ ^ self ].
	aMethod = 'Page.frameStoppedLoading' ifFalse: [ ^ self ].

	self ensureLocationRequestor.
	checkSemaphore signal.