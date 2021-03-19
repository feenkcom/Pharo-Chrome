accessing
callFrameId
	"Why is the callFrameId encoded as a JSON string?"

	^ CDTCallFrameId 
		fromDictionary: (STONJSON fromString: (rawData at: #callFrameId))
		in: debugger