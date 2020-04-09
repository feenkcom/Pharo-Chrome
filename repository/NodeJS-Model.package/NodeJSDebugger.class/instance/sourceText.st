accessing
sourceText 

	(self state isNil or: [ self callFrames first hasSourceCode not ]) ifTrue: [ ^'' ].
	^ self callFrames first sourceText