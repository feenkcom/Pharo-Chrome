testing
hasSourceCode 
	"Answer a boolean indicating whether the receiver has source code available.
	Currently assumes that if the debugger is connected, source is available"

	^ self debugger isNotNil and: [ 
		self debugger isOpen ]