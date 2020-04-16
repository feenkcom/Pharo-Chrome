printing
printOn: aStream
	"Print a status string on the supplied stream.
	For now that means the ordinal, filename, line number and column"

	aStream
		<< '#';
		print: self ordinal;
		<< ' ';
		<< self url;
		<< ':';
		print: self lineNumber;
		<< ':';
		print: self columnNumber.