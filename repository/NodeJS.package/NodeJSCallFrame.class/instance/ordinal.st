accessing
ordinal 

	^ rawData at: #callFrameId
			ifPresent: [ :callFrameId | (STONJSON fromString: callFrameId) at: #ordinal ]
			ifAbsent: [ 0 ]