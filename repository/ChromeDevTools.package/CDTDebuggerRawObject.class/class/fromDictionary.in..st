instance creation
fromDictionary: aDictionary in: aDebugger

	^ self new 
		rawData: aDictionary;
		debugger: aDebugger;
		yourself