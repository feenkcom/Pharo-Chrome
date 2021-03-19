private - model creation
pharoType

	type ifNil: 
		[ ref ifNil:
			[ ^ nil ]
		ifNotNil:
			[ ^ self referenceClassFor: ref ] ].
	^ self pharoTypeMap at: type