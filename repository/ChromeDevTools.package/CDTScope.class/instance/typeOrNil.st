accessing
typeOrNil

	^ rawData at: #type ifAbsent: [ nil ]