metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Coverage data for the current isolate.';
	optional: nil;
	items: #(#CDTPScriptCoverage);
	type: #Array.
	}