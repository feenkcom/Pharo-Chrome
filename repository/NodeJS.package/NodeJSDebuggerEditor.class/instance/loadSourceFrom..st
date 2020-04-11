private
loadSourceFrom: callFrame
	| sourceCode indexes |

	StringSignal emit: 'loadSourceFrom:'.
	callFrame hasSourceCode ifFalse: [ ^'' ].

	scriptId := callFrame scriptId.
	StringSignal emit: 'scriptId = ', scriptId asString.
	sourceCode := (debugger scriptSourceFor: scriptId) withSqueakLineEndings.
	highlightLineNumber := callFrame lineNumber.
	highlightColumnNumber := callFrame columnNumber.
	text := sourceCode asRopedText.
	highlightLineNumber = 0 ifTrue: [ 
		StringSignal emit: 'hightlightLineNumber = 0'.
		self scheduleText: text lineNumber: 1. ^text ].
	indexes := sourceCode gtIndexOfLineNumber: highlightLineNumber.
	indexes ifNil: 
		[ highlightStart := highlightEnd := nil ]
	ifNotNil: 
		[ highlightStart := indexes key + callFrame columnNumber.
		highlightEnd := indexes value.
		(text from: highlightStart to: highlightEnd) 
			attribute: (BlTextHighlightAttribute paint: BrGlamorousColors errorBackgroundColor)
				beNotOverwritableByStyler ].
	self scheduleText: text lineNumber: highlightLineNumber.
	StringSignal emit: 'loadSourceFrom: done'.
	^ text