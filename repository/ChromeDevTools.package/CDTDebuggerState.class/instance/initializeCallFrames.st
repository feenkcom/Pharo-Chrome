initialization
initializeCallFrames

	self assert: rawData isNotNil.
	self assert: debugger isNotNil.
	self updateCallFrames: (rawData at: #callFrames).
