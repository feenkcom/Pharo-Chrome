private - debugger state
debuggerResumed
	"Change the receiver's state to resumed.
	This should only be updated in response to the server indicating it is paused."

	debuggerState := #resumed.
	self announcer announce: NodeJSDebuggerResumed new.