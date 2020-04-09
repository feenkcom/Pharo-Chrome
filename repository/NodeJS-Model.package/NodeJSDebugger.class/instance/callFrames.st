accessing
callFrames

	^ self state
		ifNil: [ #() ]
		ifNotNil: [ self state callFrames ]