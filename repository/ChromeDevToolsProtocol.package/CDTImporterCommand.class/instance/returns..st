accessing
returns: anArray 

	returns := anArray collect: [ :each |
		each isDictionary 
			ifTrue: [ CDTImporterReturn new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ]