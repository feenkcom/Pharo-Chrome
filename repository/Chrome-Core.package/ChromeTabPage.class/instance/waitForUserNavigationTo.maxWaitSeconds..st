operations - page
waitForUserNavigationTo: anURL maxWaitSeconds: aNumber

	| aProcessor |
	self assert: [ anURL isNotNil ].
	self assert: [ aNumber isNotNil ].

	aProcessor := ChromeWaitForLocationHrefProcessor new
		              page: self;
		              href: anURL asZnUrl;
		              pageLoadDelay: pageLoadDelay;
		              maxWaitSeconds: aNumber.

	self addMessageProcessor: aProcessor.

	[ 
	aProcessor start.
	aProcessor wait ] ensure: [ 
		self removeMessageProcessor: aProcessor.
		aProcessor stop ]