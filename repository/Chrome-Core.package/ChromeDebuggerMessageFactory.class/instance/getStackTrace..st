messages
getStackTrace: stackTraceId
	"What's the stackTraceId?"

	^ { #method -> 'Debugger.getStackTraceId'.
		"#params -> { #scriptId -> sourceIdString } asDictionary" } asDictionary.