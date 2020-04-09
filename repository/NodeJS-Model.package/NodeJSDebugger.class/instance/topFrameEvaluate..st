api
topFrameEvaluate: aString 
	"Evaluate the supplied expression in the context of the top call frame"

	^ self callFrames first evaluate: aString