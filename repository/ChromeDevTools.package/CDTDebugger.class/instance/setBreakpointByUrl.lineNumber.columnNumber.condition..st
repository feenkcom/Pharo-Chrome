api
setBreakpointByUrl: urlRegexString lineNumber: lineNumber columnNumber: columnNumber condition: conditionString
	"Set a breakpoint"
	| resultHolder breakpoint |

	resultHolder := self
		sendMessage: (ChromeDebuggerMessageFactory new 
				setBreakpointByUrl: urlRegexString 
				lineNumber: lineNumber 
				columnNumber: columnNumber 
				condition: conditionString)
		wait: true.
	breakpoint := CDTDebuggerBreakpoint fromDictionary: (resultHolder at: #result) in: self.
	breakpoints at: breakpoint breakpointId put: breakpoint.
	^ breakpoint