ui - accessing
localScope

	^ self scopeChain detect: [ :each | each type = #local ]
		ifNone: [ nil ]