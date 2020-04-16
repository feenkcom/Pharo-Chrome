initialize
connect 
	"Connect to the end point and configure for normal operation"
	| runtimeFactory debuggerFactory |

	self addMessageProcessor: (CDTDebuggerProcessor new debugger: self).

	runtimeFactory := ChromeRuntimeMessageFactory new.
	debuggerFactory := ChromeDebuggerMessageFactory new.

	self sendMessage: runtimeFactory enable wait: true.
	self sendMessage: debuggerFactory enable wait: true.
	self sendMessage: (debuggerFactory setPauseOnExceptions: #none) wait: true.
	self sendMessage: (debuggerFactory setAsyncCallStackDepth: 0) wait: true.
	self sendMessage: runtimeFactory runIfWaitingForDebugger wait: true.
