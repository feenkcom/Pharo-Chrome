operations - page
navigateTo: anURL maxWaitSeconds: aNumber

	| result processor |
	self assert: [ anURL isNotNil ].
	self assert: [ aNumber isNotNil ].

	"Add the frame loading processor so it can collect messages until the frameId is known"
	processor := ChromeFrameLoadingProcessor new
		             frameId: nil;
		             maxWaitSeconds: aNumber;
		             pageLoadDelay: pageLoadDelay;
		             registerForCancelActions: cancelHandler.
	self addMessageProcessor: processor.
	[ 
	result := self sendMessage: { 
			          ('method' -> 'Page.navigate').
			          ('params' -> { ('url' -> anURL) } asDictionary) }
			          asDictionary.
	
	"Update the frame loading processor with the frame id.  This will also process any saved messages."
	processor frameId: ((result at: 'result') at: 'frameId').
	processor wait ] ensure: [ self removeMessageProcessor: processor ].
	cancelHandler maySignalCancel.
	^ result