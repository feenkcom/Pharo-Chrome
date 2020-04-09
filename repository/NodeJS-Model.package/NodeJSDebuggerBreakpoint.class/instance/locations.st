accessing
locations 

	^ (rawData at: #locations) collect: 
		[ :each | NodeJSDebuggerBreakpointLocation fromDictionary: each in: self debugger ]