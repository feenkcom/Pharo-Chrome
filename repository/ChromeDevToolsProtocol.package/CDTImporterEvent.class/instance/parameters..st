accessing
parameters: anArray

	parameters := anArray collect: [ :each |
		each isDictionary 
			ifTrue: [ CDTImporterParameter new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ]