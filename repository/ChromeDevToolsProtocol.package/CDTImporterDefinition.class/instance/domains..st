accessing
domains: anArray

	domains := anArray collect: [ :each |
		each isDictionary
			ifTrue: [ CDTImporterDomain new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ].