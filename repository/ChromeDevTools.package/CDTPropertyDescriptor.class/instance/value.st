accessing
value

	^ rawData at: #value 
		ifPresent: [ :value | CDTRemoteObject fromDictionary: value in: debugger ]
		ifAbsent: [ nil ]