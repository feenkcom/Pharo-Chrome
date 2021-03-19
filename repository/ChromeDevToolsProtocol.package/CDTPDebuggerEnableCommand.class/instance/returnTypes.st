metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'debuggerId';
	description: 'Unique identifier of the debugger.';
	optional: nil;
	items: nil;
	type: #CDTPUniqueDebuggerId.
	}