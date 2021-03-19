metadata
returnTypes	"Answer a descriptor of the expected return type(s)"

	^ {
CDTReturnType new
	name: 'heapSnapshotObjectId';
	description: 'Id of the heap snapshot object corresponding to the passed remote object id.';
	optional: nil;
	items: nil;
	type: #CDTPHeapSnapshotObjectId.
	}