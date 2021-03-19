metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Collected counters information.';
	optional: nil;
	items: #(#CDTPCounterInfo);
	type: #Array.
	}