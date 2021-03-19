metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'callFrames';
	description: 'New stack trace in case editing has happened while VM was stopped.';
	optional: true;
	items: #(#CDTPCallFrame);
	type: #Array.
CDTReturnType new
	name: 'stackChanged';
	description: 'Whether current call stack  was modified after applying the changes.';
	optional: true;
	items: nil;
	type: #Boolean.
CDTReturnType new
	name: 'asyncStackTrace';
	description: 'Async stack trace, if any.';
	optional: true;
	items: nil;
	type: #CDTPStackTrace.
CDTReturnType new
	name: 'asyncStackTraceId';
	description: 'Async stack trace, if any.';
	optional: true;
	items: nil;
	type: #CDTPStackTraceId.
CDTReturnType new
	name: 'exceptionDetails';
	description: 'Exception details if any.';
	optional: true;
	items: nil;
	type: #CDTPExceptionDetails.
	}