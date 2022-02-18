cancellation
requestCancel: aMessage

	cancelMessage := aMessage asString.
	shouldSignal := true.
	mutex critical: [ 
		callbacks do: [ :eachCallback | eachCallback value ] ]