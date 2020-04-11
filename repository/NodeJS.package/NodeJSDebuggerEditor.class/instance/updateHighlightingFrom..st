private
updateHighlightingFrom: callFrame
	| indexes |

	(highlightLineNumber = callFrame lineNumber and:
		[ highlightColumnNumber = callFrame columnNumber ]) ifTrue:
			[ ^self ].

	"Remove the old highlighting"
	highlightStart ifNotNil:
		[ (text from: highlightStart to: highlightEnd) clearAttributes: [ :x | true ] ].

	"Set new highlighting"
	highlightLineNumber := callFrame lineNumber.
	highlightColumnNumber := callFrame columnNumber.
	indexes := text asString gtIndexOfLineNumber: highlightLineNumber.
	indexes ifNotNil: 
		[ highlightStart := (indexes key + callFrame columnNumber) min: indexes value - 1.
		highlightEnd := indexes value.
		(text from: highlightStart to: highlightEnd) 
			attribute: (BlTextHighlightAttribute paint: BrGlamorousColors errorBackgroundColor)
				beNotOverwritableByStyler ].
	self scheduleText: text lineNumber: highlightLineNumber.
	^ text