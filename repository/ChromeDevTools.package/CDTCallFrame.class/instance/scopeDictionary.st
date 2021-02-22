ui
scopeDictionary
	"Answer a nested dictionary of the various scopes"

	^ (self scopeChain collect: [ :each |
		each type -> each properties ]) asDictionary