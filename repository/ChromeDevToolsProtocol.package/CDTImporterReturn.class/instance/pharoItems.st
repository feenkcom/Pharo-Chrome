private - model creation
pharoItems

	items ifNil: [ ^ nil ].
	^ items associations collect: [ :assoc |
		assoc key = #'$ref' ifTrue:
			[ self referenceClassFor: assoc value ]
		ifFalse: [ assoc key = #type ifTrue:
			[ self pharoTypeMap at: assoc value]
		ifFalse:
			[ self halt ] ] ]