model creation
classNameFor: nameString

	^ (String streamContents: [ :stream |
		stream 
			<< (rootDefinition optionAt: #classNamePrefix);
			<< nameString capitalized ]) asSymbol