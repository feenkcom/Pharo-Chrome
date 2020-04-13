api
evaluate: aString
	"Evaluate the supplied string in the context of the receiver"
	| result |

	result := self debugger 
		sendMessage: (ChromeDebuggerMessageFactory new 
			evaluateOnCallFrameId: self callFrameId expression: aString)
		wait: true.
	^ self resultValue: result