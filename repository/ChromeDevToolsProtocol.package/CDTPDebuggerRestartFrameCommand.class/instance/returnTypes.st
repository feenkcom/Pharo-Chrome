metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'callFrames';
	description: 'New stack trace.';
	optional: nil;
	items: #(#CDTPCallFrame);
	type: #Array.
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
	}