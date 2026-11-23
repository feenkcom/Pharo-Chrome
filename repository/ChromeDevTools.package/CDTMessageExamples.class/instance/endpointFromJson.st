examples
endpointFromJson
	"An endpoint read from the endpoint list: its keys are Strings"
	<gtExample>
	<return: #CDTDebugger>
	| endpoint |
	endpoint := CDTDebugger fromDictionary: (STON fromString: self endpointJson).
	self assert: endpoint title equals: 'hello.js'.
	self assert: endpoint webSocketDebuggerUrl equals: 'ws://127.0.0.1:9229/1d86'.
	self assert: endpoint isClosed.
	^ endpoint