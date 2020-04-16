accessing
lineNumber 

	^ (rawData at: #lineNumber 
		ifAbsent: [ self location 
				at: #lineNumber
				ifAbsent: [ 0 ] ]) + 1