utilities
openChromeWith: arguments
	| process |

	process := GtSubprocessWithInMemoryOutput 
					command: self ensuredExecutableLocation 
					arguments: arguments.
	process runAndSignal.
	^ process