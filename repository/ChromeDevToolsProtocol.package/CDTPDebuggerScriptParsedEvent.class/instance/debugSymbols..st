accessing
debugSymbols: anObject
	"If the scriptLanguage is WebASsembly, the source of debug symbols for the module.
	Flags: experimental, optional"
	<autoGeneratedMethod>

	debugSymbols := anObject isDictionary ifTrue:
		[ CDTPDebugSymbols fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]