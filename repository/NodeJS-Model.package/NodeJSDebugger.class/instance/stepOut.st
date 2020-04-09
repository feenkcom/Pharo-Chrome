api
stepOut
	"Step out of the function call"

	self
		sendMessage: ChromeDebuggerMessageFactory new stepOut
		wait: true.
	"self getStackTrace."
