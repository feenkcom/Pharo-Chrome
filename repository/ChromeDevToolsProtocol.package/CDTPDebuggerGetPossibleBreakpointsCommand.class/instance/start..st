accessing
start: anObject
	"Start of range to search possible breakpoint locations in."
	<autoGeneratedMethod>

	start := anObject isDictionary ifTrue:
		[ CDTPLocation fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
