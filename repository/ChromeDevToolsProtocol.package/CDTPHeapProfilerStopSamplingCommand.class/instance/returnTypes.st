metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'profile';
	description: 'Recorded sampling heap profile.';
	optional: nil;
	items: nil;
	type: #CDTPSamplingHeapProfile.
	}