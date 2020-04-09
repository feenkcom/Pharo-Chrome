private - debugger state
debuggerClosed
	"Change the receiver's state to resumed.
	This should only be updated in response to the server indicating it is paused."

	debuggerState := #closed.
	self announcer announce: NodeJSDebuggerClosed new.