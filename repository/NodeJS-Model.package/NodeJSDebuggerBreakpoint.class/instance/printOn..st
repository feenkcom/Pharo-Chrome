printing
printOn: aStream

	rawData ifNil: [ ^ super printOn: aStream ].
	self locations
		do: [ :loc |
			aStream
				print: loc lineNumber;
				<< ':';
				print: loc columnNumber ]
		separatedBy: [ aStream << ', ' ].
	aStream
		<< ' in ';
		<< self breakpointId
