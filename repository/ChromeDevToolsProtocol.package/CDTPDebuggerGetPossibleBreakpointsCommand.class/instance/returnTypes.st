metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'locations';
	description: 'List of the possible breakpoint locations.';
	optional: nil;
	items: #(#CDTPBreakLocation);
	type: #Array.
	}