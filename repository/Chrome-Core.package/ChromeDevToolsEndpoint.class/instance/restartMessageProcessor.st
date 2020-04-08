private
restartMessageProcessor

	messageProcessor ifNotNil: 
		[ messageProcessor terminate.
		messageProcessor := nil ].
	self startMessageProcessor.