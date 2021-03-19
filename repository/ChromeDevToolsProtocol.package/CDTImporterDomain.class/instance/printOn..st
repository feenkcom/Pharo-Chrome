printing
printOn: aStream

	domain ifNil: [ ^ super printOn: aStream ].
	aStream
		<< 'Domain: ';
		<< domain