accessing
newValue: anObject
	"New return value."
	<autoGeneratedMethod>

	newValue := anObject isDictionary ifTrue:
		[ CDTPCallArgument fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
