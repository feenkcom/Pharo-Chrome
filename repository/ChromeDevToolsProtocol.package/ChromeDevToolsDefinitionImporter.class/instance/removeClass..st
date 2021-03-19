private - preparation
removeClass: aClass 

	aClass subclasses do: [ :cls |
		self removeClass: cls ].
	aClass removeFromSystem.