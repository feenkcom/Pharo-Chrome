accessing
initialize

	super initialize.
	mutex := Mutex new.
	checkSemaphore := Semaphore new.
	pageLoadDelay := 2000.
	status := #initialized.