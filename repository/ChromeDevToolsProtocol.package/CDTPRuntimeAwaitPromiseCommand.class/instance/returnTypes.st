metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Promise result. Will contain rejected value if promise was rejected.';
	optional: nil;
	items: nil;
	type: #CDTPRemoteObject.
CDTReturnType new
	name: 'exceptionDetails';
	description: 'Exception details if stack strace is available.';
	optional: true;
	items: nil;
	type: #CDTPExceptionDetails.
	}