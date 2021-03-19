private - debugger state
debuggerPaused
	"Change the receiver's state to paused.
	This should only be updated in response to the server indicating it is paused."

	debuggerState := #paused.
	StringSignal emit: 'CDTDebugger paused'.
	self announcer announce: CDTDebuggerPaused new.