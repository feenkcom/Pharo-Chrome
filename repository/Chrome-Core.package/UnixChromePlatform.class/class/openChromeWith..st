utilities
openChromeWith: arguments
 
	| process |
	process := ChromeUnixSubprocess command: self defaultExecutableLocation arguments: arguments.
	process run.
	^process