metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Evaluation result.';
	optional: nil;
	items: nil;
	type: #CDTPRemoteObject.
CDTReturnType new
	name: 'exceptionDetails';
	description: 'Exception details.';
	optional: true;
	items: nil;
	type: #CDTPExceptionDetails.
	}