ui - accessing
sourceText 
	"Answer the receiver's source code, with the current line highlighted"
	| source text indexes lineNumber |

	lineNumber := self lineNumber.
	source := self sourceCode withSqueakLineEndings.
	text := source asRopedText.
	lineNumber = 0 ifTrue: [ ^ text ].
	indexes := source gtIndexOfLineNumber: self lineNumber.
	indexes ifNotNil: 
		[ (text from: indexes key to: indexes value) background: Color lightGray ].
	^ text