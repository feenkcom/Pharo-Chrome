metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'scriptId';
	description: 'Id of the script.';
	optional: true;
	items: nil;
	type: #CDTPScriptId.
CDTReturnType new
	name: 'exceptionDetails';
	description: 'Exception details.';
	optional: true;
	items: nil;
	type: #CDTPExceptionDetails.
	}