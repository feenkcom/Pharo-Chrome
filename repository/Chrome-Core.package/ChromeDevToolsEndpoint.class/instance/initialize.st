initialization
initialize 

	super initialize.
	announcer := Announcer new.
	messageQueue := AtomicSharedQueue new.
	messageId := 0.
	socketState := #closed.