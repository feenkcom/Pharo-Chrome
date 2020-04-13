private - accessing
nextMessageId
	"Answer the next message id to be used.
	This should be inside a mutex, but is small (single addition and assignment) and we currently assume that there won't be a lot of processes sending message concurrently"

	^ messageId := messageId + 1