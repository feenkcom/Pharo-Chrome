private - preparation
removeSubclassesOf: aClass 

	aClass subclasses do: [ :cls |
		self removeClass: cls ].
