initialize
initialize

	super initialize.
	semaphore := Semaphore new.
	maxWaitSeconds := 60.