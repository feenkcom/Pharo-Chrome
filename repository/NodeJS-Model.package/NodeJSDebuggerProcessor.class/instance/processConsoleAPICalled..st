as yet unclassified
processConsoleAPICalled: params

	params at: #stackTrace ifPresent: [ :stackTrace |
		stackTrace at: #callFrames ifPresent: [ :callFrames |
			self debugger state updateCallFrames: callFrames ] ].