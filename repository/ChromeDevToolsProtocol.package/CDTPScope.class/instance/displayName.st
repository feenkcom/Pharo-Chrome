accessing
displayName 
	"Answer a string used for displaying the receiver"

	^ String streamContents: [ :stream |
		self type ifNotNil: [ stream << self type ].
		self name ifNotNil: 
			[ stream 
				<< ': ';
				<< self name ] ]