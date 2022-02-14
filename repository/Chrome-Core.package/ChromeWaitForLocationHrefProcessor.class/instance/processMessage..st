accessing
processMessage: aMessageDictionary

	| aMethod |
	aMethod := aMessageDictionary at: 'method' ifAbsent: [ ^ self ].
	aMethod = 'Page.frameStoppedLoading' ifFalse: [ ^ self ].

	NonInteractiveTranscript stdout
		show: 'Requesting new location HREF check: ';
		show: aMessageDictionary;
		cr.

	self ensureLocationRequestor.
	checkSemaphore signal.