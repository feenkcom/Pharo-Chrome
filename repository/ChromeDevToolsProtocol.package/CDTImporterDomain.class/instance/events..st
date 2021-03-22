accessing
events: anArray 

	events := anArray collect: [ :each |
		each isDictionary 
			ifTrue: [ CDTImporterEvent new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ]