metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'names';
	description: nil;
	optional: nil;
	items: #(#String);
	type: #Array.
	}