accessing
endLocation: anObject
	"Location in the source code where scope ends
	Flags: optional"
	<autoGeneratedMethod>

	endLocation := anObject isDictionary ifTrue:
		[ CDTPLocation fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]