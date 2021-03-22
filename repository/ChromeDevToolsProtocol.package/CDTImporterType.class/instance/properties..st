accessing
properties: anArray

	properties := anArray collect: [ :each |
		each isDictionary 
			ifTrue: [ CDTImporterProperty new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ]