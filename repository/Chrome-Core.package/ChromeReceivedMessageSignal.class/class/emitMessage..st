instance creation
emitMessage: aString

	^ self new 
		message: aString;
		emit