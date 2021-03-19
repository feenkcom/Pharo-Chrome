instance creation
fromDictionary: aDictionary client: client
	"For some reason CDT answers the call frame id as a JSON string instead of an object.
	Allow for it here (hack)"

	^ aDictionary isString 
		ifTrue: [ super fromDictionary: (STONJSON fromString: aDictionary) client: client ]
		ifFalse: [ super fromDictionary: aDictionary client: client ]