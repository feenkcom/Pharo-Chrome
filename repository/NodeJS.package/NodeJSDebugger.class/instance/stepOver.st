api
stepOver
	"Step over the next statement"

	self
		sendMessage: ChromeDebuggerMessageFactory new stepOver
		wait: true.
	"self getStackTrace."
