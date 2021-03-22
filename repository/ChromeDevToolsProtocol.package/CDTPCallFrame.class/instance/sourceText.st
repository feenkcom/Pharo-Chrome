accessing
sourceText 
	"Answer the receiver's source code, with the current line highlighted"
	| source text indexes |

	source := self sourceCode withSqueakLineEndings.
	text := source asRopedText.
	lineNumber = 0 ifTrue: [ ^ text ].
	indexes := source gtIndexOfLineNumber: self lineNumber.
	indexes ifNotNil: 
		[ (text from: indexes key + self columnNumber to: indexes value) 
			attribute: (BlTextHighlightAttribute paint: BrGlamorousColors errorBackgroundColor)
				beNotOverwritableByStyler  ].
	^ text