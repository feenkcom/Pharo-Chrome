accessing
stackTraceId: anObject
	""
	<autoGeneratedMethod>

	stackTraceId := anObject isDictionary ifTrue:
		[ CDTPStackTraceId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
