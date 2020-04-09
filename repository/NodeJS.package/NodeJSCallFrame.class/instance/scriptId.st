accessing
scriptId 

	^ rawData at: #scriptId
		ifAbsent: [ self functionLocation at: #scriptId ]