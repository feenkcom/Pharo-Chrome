messages
getScriptSource: sourceIdString
	"The sourceId will have been returned in a scriptParsed event"

	^ { #method -> 'Debugger.getScriptSource'.
		#params -> { #scriptId -> sourceIdString } asDictionary } asDictionary.