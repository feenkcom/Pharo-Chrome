private - model creation
classNameFor: nameString

	^ (String streamContents: [ :stream |
		stream 
			<< (rootDefinition optionAt: #classNamePrefix);
			<< self domainName;
			<< nameString capitalized;
			<< self messageType ]) asSymbol