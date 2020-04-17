operations - page
getLayoutMetrics

	| result |
	result := self sendMessage: ChromePageMessageFactory new getLayoutMetrics.
	^result at: 'result'