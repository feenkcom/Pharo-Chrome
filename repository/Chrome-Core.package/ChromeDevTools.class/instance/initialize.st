initialization
initialize
	 
	super initialize.
	self settings: GoogleChromeSettings new.
	self debugOn.
	host := 'http://localhost:9222'.
