api
getStackTrace
	| resultHolder |

	resultHolder := self
		sendMessage: ChromeDebuggerMessageFactory new stepOver
		wait: true.
	^ resultHolder