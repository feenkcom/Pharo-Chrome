printing
printOn: aStream
	"Print a status string on the supplied stream.
	For now that means the ordinal, filename, line number and column"

	aStream
		<< self url;
		<< ':';
		print: self lineNumber;
		<< ':';
		print: self columnNumber.