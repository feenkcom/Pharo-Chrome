messages
setPauseOnExceptions: stateString

	"Need to determine all the valid values"
	self assert: (#(none all) includes: stateString).

	^ { #method -> 'Debugger.setPauseOnExceptions'.
		#params -> { #state -> stateString } asDictionary } asDictionary.