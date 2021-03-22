private - model creation
commentString
	"Answer a string that describes the receiver"

	^ String streamContents: [ :stream |
		stream 
			<< name;
			<< ': '.
		self description ifNotNil: 
			[ stream 
				<< self description; cr ].
		self items ifNotNil: 
			[ stream 
				tab; << 'Array of: '.
			self items keysAndValuesDo: [ :key :value |
				stream 
					<< key;
						<< '(';
						<< value;
						<< ') ' ].
			stream cr ] ]