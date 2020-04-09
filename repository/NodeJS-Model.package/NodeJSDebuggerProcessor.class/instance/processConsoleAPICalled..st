as yet unclassified
processConsoleAPICalled: params

	self halt.
	"Don't update the stack here, a Debugger.paused event will provide the proper information"
	"params at: #stackTrace ifPresent: [ :stackTrace |
		stackTrace at: #callFrames ifPresent: [ :callFrames |
			self debugger state updateCallFrames: callFrames ] ]."