metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'stackTrace';
	description: nil;
	optional: nil;
	items: nil;
	type: #CDTPStackTrace.
	}