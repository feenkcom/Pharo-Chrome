api
resume
	"Resume execution"

	self
		sendMessage: ChromeDebuggerMessageFactory new resume
		wait: true.
	"self getStackTrace."
