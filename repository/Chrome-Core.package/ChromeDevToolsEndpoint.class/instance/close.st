initialize-release
close 

	self webSocket close.
	messageProcessor ifNotNil: 
		[ messageProcessor terminate.
		messageProcessor := nil ].
	webSocket := nil.
	socketState := #closed.