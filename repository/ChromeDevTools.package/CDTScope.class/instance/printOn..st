printing
printOn: aStream

	super printOn: aStream.
	rawData ifNil: [ ^ self ].
	aStream
		nextPut: $(;
		<< (rawData at: #type ifAbsent: [ '<none>' ]);
		nextPut: $).