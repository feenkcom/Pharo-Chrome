metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'scriptSource';
	description: 'Script source (empty in case of Wasm bytecode).';
	optional: nil;
	items: nil;
	type: #String.
CDTReturnType new
	name: 'bytecode';
	description: 'Wasm bytecode. (Encoded as a base64 string when passed over JSON)';
	optional: true;
	items: nil;
	type: #String.
	}