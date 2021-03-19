accessing
callFrameId: anObject
	"Call frame identifier. This identifier is only valid while the virtual machine is paused."

	callFrameId := anObject isString ifTrue:
		[ CDTPCallFrameId fromDictionary: anObject client: client ]
	ifFalse:
		[ anObject ]
