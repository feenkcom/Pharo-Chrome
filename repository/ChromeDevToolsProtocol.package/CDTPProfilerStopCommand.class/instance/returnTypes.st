metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'profile';
	description: 'Recorded profile.';
	optional: nil;
	items: nil;
	type: #CDTPProfile.
	}