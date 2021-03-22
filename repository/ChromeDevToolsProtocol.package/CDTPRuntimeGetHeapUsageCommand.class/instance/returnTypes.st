metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'usedSize';
	description: 'Used heap size in bytes.';
	optional: nil;
	items: nil;
	type: #Number.
CDTReturnType new
	name: 'totalSize';
	description: 'Allocated heap size in bytes.';
	optional: nil;
	items: nil;
	type: #Number.
	}