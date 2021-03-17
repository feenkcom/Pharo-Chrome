printing
printOn: aStream

	super printOn: aStream.
	rawData ifNil: [ ^ self ].
	aStream
		nextPut: $(;
		<< (rawData at: #type ifAbsent: [ '<none>' ]);
		<< ': ';
		<< (rawData at: #name ifAbsent: [ '<none>' ]);
		nextPut: $).