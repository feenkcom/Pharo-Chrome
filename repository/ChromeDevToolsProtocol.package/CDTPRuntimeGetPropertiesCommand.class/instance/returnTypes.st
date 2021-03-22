metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'result';
	description: 'Object properties.';
	optional: nil;
	items: #(#CDTPPropertyDescriptor);
	type: #Array.
CDTReturnType new
	name: 'internalProperties';
	description: 'Internal object properties (only of the element itself).';
	optional: true;
	items: #(#CDTPInternalPropertyDescriptor);
	type: #Array.
CDTReturnType new
	name: 'privateProperties';
	description: 'Object private properties.';
	optional: true;
	items: #(#CDTPPrivatePropertyDescriptor);
	type: #Array.
CDTReturnType new
	name: 'exceptionDetails';
	description: 'Exception details.';
	optional: true;
	items: nil;
	type: #CDTPExceptionDetails.
	}