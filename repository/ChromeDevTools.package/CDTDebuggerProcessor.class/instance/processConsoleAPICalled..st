private
processConsoleAPICalled: params
	| args consoleMessage |

	consoleMessage := ''.
	params at: #type ifPresent: [ :type |
		type = #log ifTrue: 
			[ args := (params at: #args) first.
			args at: #value ifPresent: [ :value |
				consoleMessage := value asString withSqueakLineEndings ].
			args at: #preview ifPresent: [ :preview |
				consoleMessage := consoleMessage, String cr, (preview at: #description) ] ] ].
	self debugger consoleAppend: consoleMessage asString.