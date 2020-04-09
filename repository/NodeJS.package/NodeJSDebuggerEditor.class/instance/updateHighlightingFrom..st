private
updateHighlightingFrom: callFrame
	| indexes |

	(highlightLineNumber = callFrame lineNumber and:
		[ highlightColumnNumber = callFrame columnNumber ]) ifTrue:
			[ ^self ].

	"Remove the old highlighting"
	self halt.
	highlightStart ifNotNil:
		[ (text from: highlightStart to: highlightEnd) clearAttributes ].

	"Set new highlighting"
	highlightLineNumber := callFrame lineNumber.
	highlightColumnNumber := callFrame columnNumber.
	indexes := text asString gtIndexOfLineNumber: highlightLineNumber.
	indexes ifNotNil: 
		[ highlightStart := indexes key + callFrame columnNumber.
		highlightEnd := indexes value.
		(text from: highlightStart to: highlightEnd) 
			attribute: (BlTextHighlightAttribute paint: BrGlamorousColors errorBackgroundColor)
				beNotOverwritableByStyler ].
	self text: text.
	self scrollToPosition: highlightLineNumber.
	^ text