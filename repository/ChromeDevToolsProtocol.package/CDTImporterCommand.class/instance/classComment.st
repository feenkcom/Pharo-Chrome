private - model creation
classComment 
	"Answer the string to be used as the class comment for the receiver"

	^ String streamContents: [ :stream |
		self description ifNotNil: [ 
			stream
				<< self description;
				cr; cr ].
		self printFlagsOn: stream leadingTabCount: 0.
		self redirect ifNotNil: 
			[ stream 
				<< 'Redirects to: ';
				<< self redirect;
				cr ].
		self returns ifNotNil: 
			[ stream << 'Returns:'; cr.
			self returns do: [ :result |
				stream << result commentString ] ] ]