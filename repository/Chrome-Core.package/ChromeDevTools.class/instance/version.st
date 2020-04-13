accessing
version
	"Return a dictionary with version information"
	
	^STON fromURL: host, '/json/version'