accessing
value: anObject
	"Preview of the value."
	<autoGeneratedMethod>

	value := anObject isDictionary ifTrue:
		[ CDTPObjectPreview fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]