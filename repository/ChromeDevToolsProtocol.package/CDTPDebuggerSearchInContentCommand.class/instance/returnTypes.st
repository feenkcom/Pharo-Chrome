metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'List of search matches.';
	optional: nil;
	items: #(#CDTPSearchMatch);
	type: #Array.
	}