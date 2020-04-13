accessing
webSocket

	^webSocket ifNil:
		[ webSocket := ZnWebSocket to: self webSocketDebuggerUrl.
		socketState := #open.
		self startMessageListener.
		self startMessageProcessor.
		webSocket ]