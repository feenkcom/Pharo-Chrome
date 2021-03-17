private
consoleAppend: aString

	consoleStream 
		nextPutAll: aString;
		cr.
	self announcer announce: (CDTDebuggerConsoleUpdated new string: aString).