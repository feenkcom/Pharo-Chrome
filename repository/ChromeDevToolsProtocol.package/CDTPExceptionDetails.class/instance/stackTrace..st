accessing
stackTrace: anObject
	"JavaScript stack trace if available.
	Flags: optional"
	<autoGeneratedMethod>

	stackTrace := anObject isDictionary ifTrue:
		[ CDTPStackTrace fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]