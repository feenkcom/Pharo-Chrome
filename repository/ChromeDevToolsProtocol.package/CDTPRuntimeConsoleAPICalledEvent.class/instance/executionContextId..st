accessing
executionContextId: anObject
	"Identifier of the context where the call was made."
	<autoGeneratedMethod>

	executionContextId := anObject isDictionary ifTrue:
		[ CDTPExecutionContextId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
