private
locationRequestorLoop

	| aResponse aCurrentHref |
	[ self isDone ] whileFalse: [ 
		"Postpone request"
		(Delay forMilliseconds: pageLoadDelay) wait.

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

		NonInteractiveTranscript stdout
			show: 'Received HREF: ';
			show: aCurrentHref;
			show: ', comparing with: ';
			show: self href;
			cr.

		"If it is the expected one, signal it"
		aCurrentHref ifNotNil: [ :aHref | 
			aHref = self href ifTrue: [ 
				NonInteractiveTranscript stdout
					show: 'Stopping Locatin HREF look...';
					cr.
					
				self beDone.

				semaphore signal ] ] ].

	locationRequestor := nil