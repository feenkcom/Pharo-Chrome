accessing
location: anObject
	"Location in the source code."
	<autoGeneratedMethod>

	location := anObject isDictionary ifTrue:
		[ CDTPLocation fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
