accessing
callFrames
	"Auto-generated accessor method"

	callFrames ifNil: [ self initializeCallFrames ].
	^ callFrames