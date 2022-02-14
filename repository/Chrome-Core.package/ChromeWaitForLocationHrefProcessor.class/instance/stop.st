accessing
stop

	locationRequestor ifNotNil: [ :aRequestor | 
		locationRequestor := nil.
		aRequestor terminate ]