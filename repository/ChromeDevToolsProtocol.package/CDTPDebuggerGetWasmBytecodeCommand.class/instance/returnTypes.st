metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'bytecode';
	description: 'Script source. (Encoded as a base64 string when passed over JSON)';
	optional: nil;
	items: nil;
	type: #String.
	}