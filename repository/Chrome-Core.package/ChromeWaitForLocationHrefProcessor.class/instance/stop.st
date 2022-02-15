messages
stop

	locationRequestor ifNotNil: [ :aRequestor | 
		locationRequestor := nil.
		self beDone.
		checkSemaphore signal.
		aRequestor terminate ]