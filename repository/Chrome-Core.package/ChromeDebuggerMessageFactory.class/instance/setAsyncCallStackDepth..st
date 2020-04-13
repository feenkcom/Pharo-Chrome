messages
setAsyncCallStackDepth: anInteger

	^ { #method -> 'Debugger.setAsyncCallStackDepth'.
		#params -> { #maxDepth -> anInteger } asDictionary } asDictionary.