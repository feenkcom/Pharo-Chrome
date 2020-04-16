api
getScriptSource: scriptIdString
	"Answer the source code of the supplied script id"
	| resultHolder |

	resultHolder := self
		sendMessage: (ChromeDebuggerMessageFactory new getScriptSource: scriptIdString)
		wait: true.
	^ (resultHolder at: #result) at: #scriptSource