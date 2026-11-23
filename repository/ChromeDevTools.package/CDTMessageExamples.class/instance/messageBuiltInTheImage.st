examples
messageBuiltInTheImage
	"A message built in the image has String keys, like the JSON it is sent as"
	<gtExample>
	<return: #Dictionary>
	| message |
	message := ChromeDebuggerMessageFactory new getScriptSource: '42'.
	self assert: (message at: 'method') equals: 'Debugger.getScriptSource'.
	self assert: ((message at: 'params') at: 'scriptId') equals: '42'.
	self assert: (STONJSON fromString: (STON toJsonString: message)) equals: message.
	^ message