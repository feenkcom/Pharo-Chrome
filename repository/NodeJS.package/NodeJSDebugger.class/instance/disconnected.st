private - debugger state
disconnected

	super disconnected.
	debuggerState := #closed.
	self announcer announce: NodeJSDebuggerClosed new.