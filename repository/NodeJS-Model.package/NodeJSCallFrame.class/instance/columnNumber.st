accessing
columnNumber 

	^ rawData at: #columnNumber 
		ifAbsent: [ self location 
			at: #columnNumber
			ifAbsent: [ 0 ] ]