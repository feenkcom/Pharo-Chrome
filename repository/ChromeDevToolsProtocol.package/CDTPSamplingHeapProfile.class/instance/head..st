accessing
head: anObject
	""
	<autoGeneratedMethod>

	head := anObject isDictionary ifTrue:
		[ CDTPSamplingHeapProfileNode fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]