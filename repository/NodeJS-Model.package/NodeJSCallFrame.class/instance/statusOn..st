printing
statusOn: aStream
	"Print a status string on the supplied stream.
	For now that means the ordinal, filename, line number and column"

	self printOn: aStream.
	aStream cr.
		