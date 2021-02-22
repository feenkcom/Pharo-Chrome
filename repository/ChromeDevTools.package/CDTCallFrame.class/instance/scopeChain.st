accessing
scopeChain
	"Auto-generated accessor method"

	^ scopeChain ifNil: [ scopeChain := (rawData at: #scopeChain) collect:
		[ :each | CDTScope fromDictionary: each in: debugger ] ].