accessing
objectId: anObject
	"Identifier of the object to release."
	<autoGeneratedMethod>

	objectId := anObject isDictionary ifTrue:
		[ CDTPRemoteObjectId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]