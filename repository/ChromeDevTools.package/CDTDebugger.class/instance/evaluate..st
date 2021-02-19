api
evaluate: jsExpression
	"Evaluate the supplied expression and return the result.
	Undefined is coerced to nil"
	| resultHolder rHr rHrr |

	resultHolder := self
		sendMessage: (ChromeRuntimeMessageFactory new evaluate: jsExpression)
		wait: true.
	rHr := resultHolder at: #result ifAbsent: [ self error: 'Unable to retrieve held result' ].
	rHrr := rHr at: #result ifAbsent: [ self error: 'Unable to retrieve result' ].
	rHrr at: #type ifPresent: [ :type | type = #undefined ifTrue: [ ^ nil ] ].
	^ rHrr at: #value ifAbsent: [ self error: 'Unable to retrieve results value' ]