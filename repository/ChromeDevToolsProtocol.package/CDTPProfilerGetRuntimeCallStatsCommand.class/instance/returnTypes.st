metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Collected runtime call counter information.';
	optional: nil;
	items: #(#CDTPRuntimeCallCounterInfo);
	type: #Array.
	}