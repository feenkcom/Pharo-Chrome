metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'objects';
	description: 'Array with objects.';
	optional: nil;
	items: nil;
	type: #CDTPRemoteObject.
	}