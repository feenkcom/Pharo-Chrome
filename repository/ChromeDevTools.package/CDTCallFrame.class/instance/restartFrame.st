api
restartFrame
	"Restart the receiver's frame"
	| result |

	result := self debugger 
		sendMessage: (ChromeDebuggerMessageFactory new 
			restartFrame: self callFrameId)
		wait: true.
	^ result