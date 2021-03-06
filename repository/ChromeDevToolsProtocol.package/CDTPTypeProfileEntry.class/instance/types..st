accessing
types: anObject
	"The types for this parameter or return value.
	type: array of:  $ref(TypeObject)"
	<autoGeneratedMethod>

	types := anObject collect: [ :each |
		each isDictionary ifTrue:
			[ CDTPTypeObject fromDictionary: each client: client ]
		ifFalse:
			[ each ] ]
