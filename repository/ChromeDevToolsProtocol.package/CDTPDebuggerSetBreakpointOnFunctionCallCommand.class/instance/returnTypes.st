metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'breakpointId';
	description: 'Id of the created breakpoint for further reference.';
	optional: nil;
	items: nil;
	type: #CDTPBreakpointId.
	}