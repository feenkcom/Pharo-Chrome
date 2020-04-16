accessing
locations 

	^ (rawData at: #locations) collect: 
		[ :each | CDTDebuggerBreakpointLocation fromDictionary: each in: self debugger ]