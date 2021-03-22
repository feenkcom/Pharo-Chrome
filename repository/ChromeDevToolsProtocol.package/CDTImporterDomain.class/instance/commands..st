accessing
commands: anArray

	commands := anArray collect: [ :each |
		each isDictionary 
			ifTrue: [ CDTImporterCommand new 
				initializeWithDictionary: each 
				root: rootDefinition
				parent: self ]
			ifFalse: [ each ] ]