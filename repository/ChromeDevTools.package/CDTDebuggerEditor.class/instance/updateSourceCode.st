text areas behavior
updateSourceCode
	"Update the receiver to display the source code of the top frame, highlighting the current line and column"
	| callFrame |

	callFrame := debugger topFrame.
	callFrame scriptId = scriptId
		ifTrue: [ self updateHighlightingFrom: callFrame ]
		ifFalse: [ self loadSourceFrom: callFrame ]