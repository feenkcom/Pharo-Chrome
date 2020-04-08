api
stepOver
	"Step over the next statement"
	| resultHolder |

	resultHolder := self
		sendMessage: ChromeDebuggerMessageFactory new stepOver
		wait: true.
	^ self