accessing
callFrames: anObject
	"JavaScript function name.
	type: array of:  $ref(CallFrame)"
	<autoGeneratedMethod>

	callFrames := anObject collect: [ :each |
		each isDictionary ifTrue:
			[ CDTPCallFrame fromDictionary: each client: client ]
		ifFalse:
			[ each ] ]
