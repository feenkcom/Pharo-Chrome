initialization
initializeWithDictionary: aDictionary root: aRootDefinition parent: aParent

	rootDefinition := aRootDefinition.
	parent := aParent.
	rawData := aDictionary.
	rawData keysAndValuesDo: [ :key :value | | selector |
		selector := (key, ':') asSymbol.
		selector = '$ref:' ifTrue: [ selector := #ref: ].
		self perform: selector with: value ]