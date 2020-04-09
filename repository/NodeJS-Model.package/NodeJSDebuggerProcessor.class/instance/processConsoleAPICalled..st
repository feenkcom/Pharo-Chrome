private
processConsoleAPICalled: params

	params at: #type ifPresent: [ :type |
		type = #log ifTrue: 
			[ self debugger consoleAppend: ((params at: #args) first at: #value) withSqueakLineEndings ] ]