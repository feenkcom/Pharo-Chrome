initialization
initialize

	super initialize.
	parsedScripts := Dictionary new.
	consoleStream := (String new: 1024) writeStream.
	breakpoints := Dictionary new.