private
consoleAppend: aString

	consoleStream 
		nextPutAll: aString;
		cr.
	self announcer announce: NodeJSDebuggerConsoleUpdated new.