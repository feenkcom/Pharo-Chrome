private
startMessageProcessor
	| message |

	messageProcessor ifNotNil: [ self error: 'Can only have one messageProcessor running' ].

	messageProcessor := [ 
		[ message := STONJSON fromString: messageQueue next.
		self announcer announce: (ChromeMessageAnnouncement new rawData: message) ]
			repeat
				] forkAt: Processor userBackgroundPriority.
