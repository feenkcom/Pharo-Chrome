accessing
end: anObject
	""
	<autoGeneratedMethod>

	end := anObject isDictionary ifTrue:
		[ CDTPScriptPosition fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]