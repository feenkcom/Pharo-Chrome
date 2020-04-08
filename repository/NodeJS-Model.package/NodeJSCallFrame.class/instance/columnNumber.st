accessing
columnNumber 

	^ rawData at: #columnNumber 
		ifPresent: [ :columnNumber | columnNumber ]
		ifAbsent: [ self functionLocation at: #columnNumber ]