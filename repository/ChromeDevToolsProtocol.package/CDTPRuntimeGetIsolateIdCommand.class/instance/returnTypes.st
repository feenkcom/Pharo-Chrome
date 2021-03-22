metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'id';
	description: 'The isolate id.';
	optional: nil;
	items: nil;
	type: #String.
	}