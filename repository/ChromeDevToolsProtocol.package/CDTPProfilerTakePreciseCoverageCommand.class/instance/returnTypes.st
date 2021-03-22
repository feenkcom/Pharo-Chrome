metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Coverage data for the current isolate.';
	optional: nil;
	items: #(#CDTPScriptCoverage);
	type: #Array.
CDTReturnType new
	name: 'timestamp';
	description: 'Monotonically increasing time (in seconds) when the coverage update was taken in the backend.';
	optional: nil;
	items: nil;
	type: #Number.
	}