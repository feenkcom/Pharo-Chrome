accessing
scriptId: anObject
	"Id of the script to search in."
	<autoGeneratedMethod>

	scriptId := anObject isDictionary ifTrue:
		[ CDTPScriptId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]