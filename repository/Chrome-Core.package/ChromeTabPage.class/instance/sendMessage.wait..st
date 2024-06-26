private
sendMessage: aDictionary wait: waitBoolean

	"Send the supplied message to the browser, if requested, wait for the response and raise an exception on failure."

	| result processor mid |
	result := nil.
	"Ensure that a message id is included"
	mid := aDictionary at: 'id' ifAbsentPut: [ self nextMessageId ].
	"If waiting, set up the message processor to signal on completion"
	waitBoolean ifTrue: [ 
		processor := ChromeStatusMessageProcessor forMessageId: mid.
		processor registerForCancelActions: cancelHandler.
		self addMessageProcessor: processor ].
	"Send the message"
	self sendMessageString: (STON toJsonString: aDictionary).
	"If requested, wait for operation completion"
	waitBoolean ifTrue: [ 
		processor wait.
		cancelHandler maySignalCancel.
		self checkResponse: processor result.
		self removeMessageProcessor: processor.
		result := processor result ].
	^ result