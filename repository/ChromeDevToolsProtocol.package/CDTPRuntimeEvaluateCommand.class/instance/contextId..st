accessing
contextId: anObject
	"Specifies in which execution context to perform evaluation. If the parameter is omitted the
evaluation will be performed in the context of the inspected page.
This is mutually exclusive with `uniqueContextId`, which offers an
alternative way to identify the execution context that is more reliable
in a multi-process environment.
	Flags: optional"
	<autoGeneratedMethod>

	contextId := anObject isDictionary ifTrue:
		[ CDTPExecutionContextId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
