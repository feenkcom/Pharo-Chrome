accessing
objectId: anObject
	"Remote object handle.
	Flags: optional"
	<autoGeneratedMethod>

	objectId := anObject isDictionary ifTrue:
		[ CDTPRemoteObjectId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]