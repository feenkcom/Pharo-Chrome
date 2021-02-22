printing
printOn: aStream

	super printOn: aStream.
	rawData ifNil: [ ^ self ].
	aStream
		nextPut: $(;
		<< self name.
	self enumerable ifTrue:
		[ aStream
			nextPut: $=;
			print: self value ].
	aStream nextPut: $).