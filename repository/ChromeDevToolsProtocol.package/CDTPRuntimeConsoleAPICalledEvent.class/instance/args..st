accessing
args: anObject
	"Call arguments.
	type: array of:  $ref(RemoteObject)"
	<autoGeneratedMethod>

	args := anObject collect: [ :each |
		each isDictionary ifTrue:
			[ CDTPRemoteObject fromDictionary: each client: client ]
		ifFalse:
			[ each ] ]