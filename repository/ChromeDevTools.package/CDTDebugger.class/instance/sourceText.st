accessing
sourceText 
	"Answer the highlighted text for the top call frame"

	(self state isNil or: [ self callFrames first hasSourceCode not ]) ifTrue: [ ^'' ].
	^ self callFrames first sourceText