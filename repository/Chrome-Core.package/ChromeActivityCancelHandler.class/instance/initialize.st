initialization
initialize

	super initialize.

	mutex := Mutex new.
	callbacks := OrderedCollection new.
	shouldSignal := false.
	cancelMessage := 'Canceled'