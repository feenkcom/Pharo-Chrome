messages
evaluateOnCallFrameId: aCallFrameIdString expression: aString 

	^ { #method -> 'Debugger.evaluateOnCallFrame'.
		#params -> { 
			#callFrameId -> aCallFrameIdString.
			#expression -> aString.
			#objectGroup -> 'pharo-nodejs'.
			#generatePreview -> true. } asDictionary.
				} asDictionary.