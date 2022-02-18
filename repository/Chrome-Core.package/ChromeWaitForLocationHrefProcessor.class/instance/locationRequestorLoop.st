private
locationRequestorLoop

	[ self isDone ] whileFalse: [ self locationRequestorIteration ].

	locationRequestor := nil