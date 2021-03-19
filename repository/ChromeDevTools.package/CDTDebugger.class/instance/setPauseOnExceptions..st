api
setPauseOnExceptions: aSymbol
	"Indicate whether the debugger should catch every exception.
	aSymbol = #none or #all"

	self 
		sendMessage: (ChromeDebuggerMessageFactory new setPauseOnExceptions: aSymbol) 
		wait: true.
