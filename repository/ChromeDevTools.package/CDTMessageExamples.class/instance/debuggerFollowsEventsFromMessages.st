examples
debuggerFollowsEventsFromMessages
	"A debugger keeps the state node reports: the result of Debugger.enable gives its id, a paused event its call frames, a resumed event resumes it"
	<gtExample>
	<return: #CDTDebugger>
	| debugger processor |
	debugger := CDTDebugger new.
	processor := CDTDebuggerProcessor new debugger: debugger.
	processor processMessage: (STONJSON fromString: '{"id":1,"result":{"debuggerId":"-42"}}').
	self assert: debugger debuggerId equals: '-42'.
	processor processMessage: (STONJSON fromString: self pausedEventJson).
	self assert: debugger debuggerState equals: #paused.
	self assert: debugger state reason equals: 'other'.
	self assert: debugger topFrame functionName equals: 'add'.
	self assert: debugger topFrame lineNumber equals: 2.
	self assert: debugger topFrame scopeChain first type equals: 'local'.
	processor processMessage: (STONJSON fromString: '{"method":"Debugger.resumed","params":{}}').
	self assert: debugger debuggerState equals: #resumed.
	^ debugger