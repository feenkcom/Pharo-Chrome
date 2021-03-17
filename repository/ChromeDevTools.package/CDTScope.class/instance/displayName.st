accessing
displayName 
	"Answer a string used for displaying the receiver"

	^ String streamContents: [ :stream |
		self typeOrNil ifNotNil: [ :type |
			stream << type ].
		self nameOrNil ifNotNil: [ :name |
			stream 
				<< ': ';
				<< name ] ]