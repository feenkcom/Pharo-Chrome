accessing
scriptId: anObject
	""
	<autoGeneratedMethod>

	scriptId := anObject isDictionary ifTrue:
		[ CDTPScriptId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
