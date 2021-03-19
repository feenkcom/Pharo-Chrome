metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Evaluation result.';
	optional: nil;
	items: nil;
	type: #CDTPRemoteObject.
	}