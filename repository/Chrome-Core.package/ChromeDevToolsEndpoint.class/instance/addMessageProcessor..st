adding
addMessageProcessor: aMessageProcessor

	self announcer
		when: ChromeMessageAnnouncement 
		send: #processAnnouncement:
		to: aMessageProcessor.
