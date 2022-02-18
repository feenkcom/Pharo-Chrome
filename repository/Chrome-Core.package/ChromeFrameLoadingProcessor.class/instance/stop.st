messages
stop

	idleProcess ifNotNil: [ :aProcess | 
		idleProcess := nil.
		aProcess terminate ]