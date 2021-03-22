accessing
get: anObject
	"A function which serves as a getter for the property, or `undefined` if there is no getter
(accessor descriptors only).
	Flags: optional"
	<autoGeneratedMethod>

	get := anObject isDictionary ifTrue:
		[ CDTPRemoteObject fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]