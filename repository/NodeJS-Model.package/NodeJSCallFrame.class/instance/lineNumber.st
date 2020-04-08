accessing
lineNumber 

	^ rawData at: #lineNumber 
		ifPresent: [ :lineNumber | lineNumber ]
		ifAbsent: [ self functionLocation at: #lineNumber ]