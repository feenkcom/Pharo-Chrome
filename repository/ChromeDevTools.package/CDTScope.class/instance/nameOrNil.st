accessing
nameOrNil

	^ rawData at: #name ifAbsent: [ nil ]