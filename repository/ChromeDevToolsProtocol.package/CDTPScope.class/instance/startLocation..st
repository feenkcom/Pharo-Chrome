accessing
startLocation: anObject
	"Location in the source code where scope starts
	Flags: optional"
	<autoGeneratedMethod>

	startLocation := anObject isDictionary ifTrue:
		[ CDTPLocation fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
