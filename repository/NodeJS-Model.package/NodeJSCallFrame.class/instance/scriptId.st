accessing
scriptId 

	^ rawData at: #scriptId
		ifPresent: [ :scriptId | scriptId ]
		ifAbsent: [ self functionLocation at: #scriptId ]