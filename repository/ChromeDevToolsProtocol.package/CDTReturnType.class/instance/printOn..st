printing
printOn: aStream

	super printOn: aStream.
	aStream
		nextPut: $(;
		<< (self name ifNil: [ '<none>' ]);
		nextPut: $)