private
sendMessage: aDictionary wait: waitBoolean
	"Send the supplied message to the browser, if requested, wait for the response and raise an exception on failure."

	| result processor mid |

	"Attempting to send a message and wait from the messageprocessor process will result in deadlock"
	(waitBoolean and: [ Processor activeProcess == messageProcessor ]) ifTrue: 
		[ self error: 'Can''t send message from messageProcessor process' ].

	result := nil.
	"Ensure that a message id is included"
	mid := aDictionary at: 'id' ifAbsentPut: [self nextMessageId].
	"If waiting, set up the message processor to signal on completion"
	waitBoolean ifTrue: [ 
		processor := ChromeStatusMessageProcessor forMessageId: mid.
		self addMessageProcessor: processor ].
	"Send the message"
	self sendMessageString: (STON toJsonString: aDictionary).
	"If requested, wait for operation completion"
	waitBoolean ifTrue: [
		processor wait.
		self checkResponse: processor result.
		self removeMessageProcessor: processor.
		result := processor result ].
	^result