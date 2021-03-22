accessing
columnNumber
	"JavaScript script column number (0-based).
	type: integer"

	^ columnNumber ifNil: [ location columnNumber ]