accessing
this: anObject
	"`this` object for this call frame."
	<autoGeneratedMethod>

	this := anObject isDictionary ifTrue:
		[ CDTPRemoteObject fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
