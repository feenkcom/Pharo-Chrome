private
loadSourceFrom: callFrame
	| sourceCode indexes |

	callFrame hasSourceCode ifFalse: [ ^'' ].
self halt.
	scriptId := callFrame scriptId.
	sourceCode := (debugger scriptSourceFor: scriptId) withSqueakLineEndings.
	highlightLineNumber := callFrame lineNumber.
	highlightColumnNumber := callFrame columnNumber.
	text := sourceCode asRopedText.
	highlightLineNumber = 0 ifTrue: [ ^text ].
	indexes := sourceCode gtIndexOfLineNumber: highlightLineNumber.
	indexes ifNil: 
		[ highlightStart := highlightEnd := nil ]
	ifNotNil: 
		[ highlightStart := indexes key + callFrame columnNumber.
		highlightEnd := indexes value.
		(text from: highlightStart to: highlightEnd) 
			attribute: (BlTextHighlightAttribute paint: BrGlamorousColors errorBackgroundColor)
				beNotOverwritableByStyler ].
	self text: text.
	self scrollToPosition: highlightLineNumber.
	^ text