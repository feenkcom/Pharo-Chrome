api
stepInto
	"Step into the next statement"

	self
		sendMessage: ChromeDebuggerMessageFactory new stepInto
		wait: true.
	"self getStackTrace."
