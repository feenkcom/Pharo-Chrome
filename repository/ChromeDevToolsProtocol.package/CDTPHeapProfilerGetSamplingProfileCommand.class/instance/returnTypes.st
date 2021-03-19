metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'profile';
	description: 'Return the sampling profile being collected.';
	optional: nil;
	items: nil;
	type: #CDTPSamplingHeapProfile.
	}