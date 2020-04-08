*NodeJS-Model
gtIndexOfLineNumber: anInteger
	"Answer the character indexes of the start and end of the requested line number"
	| lineCount |

	lineCount := 0.
	self lineIndicesDo: [ :start :endWithoutDelimiters :end |
		(lineCount := lineCount + 1) = anInteger ifTrue: [ ^ start -> endWithoutDelimiters ] ].
	^ nil