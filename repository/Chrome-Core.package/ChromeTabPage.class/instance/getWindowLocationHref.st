operations - page
getWindowLocationHref

	| result |
	result := self sendMessage:
		          ChromeRuntimeMessageFactory new getWindowLocationHref.
	self checkResponse: result.
	^ ((result at: 'result') at: 'result') at: 'value'