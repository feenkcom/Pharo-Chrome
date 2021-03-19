printing
printOn: aStream

	rawData ifNil: [ ^ super printOn: aStream ].
	self name ifNotNil: 
		[ aStream << self name.
		self value ifNotNil:
			[ aStream
				<< '=';
				<< self value asString ].
		^ self ].
	self type = #undefined ifTrue: [ ^ aStream << 'undefined' ].
	self type = #object ifTrue: [ ^ aStream << 'an object' ].
	self type = #function ifTrue: [ ^ aStream << 'a function' ].
	(rawData includesKey: #value) ifTrue: [ ^ aStream print: self value ].
	(rawData includesKey: #description) ifTrue: [ ^ aStream print: self description].
	aStream << 'unknown'.