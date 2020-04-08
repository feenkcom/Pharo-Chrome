messages
processMethodEvent: method from: aMessageDictionary
	| params object |

	params := aMessageDictionary at: #params.
	method = #'Debugger.scriptParsed' ifTrue:
		[ object := NodeJSParsedScript fromDictionary: params.
		^ self debugger parsedScripts at: object url put: object ].

	method = #'Runtime.executionContextCreated' ifTrue: 
		[ "(aMessageDictionary at: #params) at: #context" ^ self ].

	method = #'Debugger.paused' ifTrue: 
		[ object := NodeJSDebuggerState fromDictionary: params in: self debugger.
		^ self debugger state: object ].

	method = #'Debugger.resumed' ifTrue: 
		[ ^ self ].

	method = #'Runtime.consoleAPICalled' ifTrue: 
		[ ^ self processConsoleAPICalled: params. ].

	self halt.