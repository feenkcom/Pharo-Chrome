messages
setPauseOnExceptions: stateString

	"Need to determine all the valid values"
	self assert: (#(none) includes: stateString).

	^ { #method -> 'Debugger.setPauseOnExceptions'.
		#params -> { #state -> stateString } asDictionary } asDictionary.