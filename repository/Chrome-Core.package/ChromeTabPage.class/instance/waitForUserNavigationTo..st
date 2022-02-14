accessing
waitForUserNavigationTo: anURL

	| aProcessor |
	self assert: [ anURL isNotNil ].

	aProcessor := ChromeWaitForLocationHrefProcessor new
		              page: self;
		              href: anURL asZnUrl;
		              pageLoadDelay: pageLoadDelay.

	self addMessageProcessor: aProcessor.

	[ aProcessor wait ] ensure: [ 
		self removeMessageProcessor: aProcessor.
		aProcessor stop ]