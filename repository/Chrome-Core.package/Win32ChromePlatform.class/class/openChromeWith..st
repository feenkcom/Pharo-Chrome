utilities
openChromeWith: arguments
	| process |

	process := GtSubprocessWithInMemoryOutput 
					command: self defaultExecutableLocation 
					arguments: arguments.
	process runAndSignal.
	^ process