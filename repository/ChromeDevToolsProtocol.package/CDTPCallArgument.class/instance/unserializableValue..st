accessing
unserializableValue: anObject
	"Primitive value which can not be JSON-stringified.
	Flags: optional"
	<autoGeneratedMethod>

	unserializableValue := anObject isDictionary ifTrue:
		[ CDTPUnserializableValue fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]