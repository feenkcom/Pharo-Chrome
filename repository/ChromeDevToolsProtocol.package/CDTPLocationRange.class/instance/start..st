accessing
start: anObject
	""
	<autoGeneratedMethod>

	start := anObject isDictionary ifTrue:
		[ CDTPScriptPosition fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
