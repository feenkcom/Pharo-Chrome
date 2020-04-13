messages
restartFrame: callFrameIdString

	^ { #method -> 'Debugger.restartFrame'.
		#params -> { #callFrameId -> callFrameIdString } asDictionary } asDictionary.