private
locationRequestorLoop

	| aResponse aCurrentHref |
	[ self isDone ] whileFalse: [ 
		| isFirstTime |
		isFirstTime := self isInitialized.
		
		"Wait for a next request"
		status := #waiting.
		checkSemaphore wait.

		isFirstTime ifFalse: [ 
			"Postpone request" 
			(Delay forMilliseconds: pageLoadDelay) wait ].

		status := #checking.

		"Ask for a location HREF"
		aResponse := self page sendMessage:
			             ChromeRuntimeMessageFactory new getWindowLocationHref.

		aCurrentHref := aResponse
			                at: 'result'
			                ifPresent: [ :aResult | 
				                aResult
					                at: 'result'
					                ifPresent: [ :aSubResult | 
						                aSubResult
							                at: 'value'
							                ifPresent: [ :aString | aString asZnUrl ]
							                ifAbsent: [ nil ] ]
					                ifAbsent: [ nil ] ]
			                ifAbsent: [ nil ].

		"If it is the expected one, signal it"
		aCurrentHref ifNotNil: [ :aHref | 
			aHref = self href ifTrue: [

				self beDone.
				semaphore signal ] ] ].

	locationRequestor := nil