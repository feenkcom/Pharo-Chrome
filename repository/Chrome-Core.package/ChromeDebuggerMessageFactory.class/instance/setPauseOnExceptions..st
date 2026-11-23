messages
setPauseOnExceptions: stateString

	"Need to determine all the valid values"
	self assert: (#('none' 'all') includes: stateString asString).

	^ { 'method' -> 'Debugger.setPauseOnExceptions'.
		'params' -> { 'state' -> stateString asString } asDictionary } asDictionary.