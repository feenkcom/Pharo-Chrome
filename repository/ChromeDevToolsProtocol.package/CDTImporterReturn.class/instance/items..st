accessing
items: anArray

	items := anArray collect: [ :each |
		each isDictionary 
			ifTrue: [ CDTImporterItem new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ]