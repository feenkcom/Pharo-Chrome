accessing
definitionFrom: filename

	^ definition ifNil: 
		[ definition := CDTImporterDefinition new.
		definition 
			initializeWithDictionary: (STONJSON fromString: filename contents) 
			root: definition
			parent: self ]