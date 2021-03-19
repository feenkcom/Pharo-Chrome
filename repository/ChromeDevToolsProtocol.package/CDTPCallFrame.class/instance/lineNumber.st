accessing
lineNumber
	"JavaScript script line number (0-based).
	type: integer"

	^ lineNumber ifNil: [ location lineNumber ]