accessing
asyncStackTrace: anObject
	"Async stack trace, if any.
	Flags: optional"
	<autoGeneratedMethod>

	asyncStackTrace := anObject isDictionary ifTrue:
		[ CDTPStackTrace fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
