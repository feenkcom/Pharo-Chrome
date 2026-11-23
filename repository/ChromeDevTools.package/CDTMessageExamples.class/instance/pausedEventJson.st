examples
pausedEventJson
	"A paused event, as node sends it when it stops in the function add"

	^ '{"method":"Debugger.paused","params":{"reason":"other","hitBreakpoints":["1:2:0:hello.js"],"callFrames":[{"callFrameId":"{\"ordinal\":0,\"injectedScriptId\":1}","functionName":"add","location":{"scriptId":"42","lineNumber":2,"columnNumber":2},"url":"file:///tmp/hello.js","scopeChain":[{"type":"local","object":{"type":"object","objectId":"7"}}],"this":{"type":"undefined"}}]}}'