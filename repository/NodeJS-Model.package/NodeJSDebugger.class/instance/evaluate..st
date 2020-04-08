api
evaluate: jsExpression
	"Evaluate the supplied expression and return the result"
	| resultHolder |

	resultHolder := self
		sendMessage: (ChromeRuntimeMessageFactory new evaluate: jsExpression)
		wait: true.
	^ ((resultHolder at: #result) at: #result) at: #value