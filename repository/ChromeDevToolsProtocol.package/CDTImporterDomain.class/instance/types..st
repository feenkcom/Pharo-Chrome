accessing
types: anArray 

	types := anArray collect: [ :each |
		each isDictionary 
			ifTrue: [ CDTImporterType new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ]