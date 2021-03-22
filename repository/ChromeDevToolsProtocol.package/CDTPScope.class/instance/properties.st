accessing
properties 
	"Request the properties (variables) for the receiver"
	| resultHolder |

	properties ifNotNil: [ ^ properties ].
	resultHolder := client sendMessage: (ChromeRuntimeMessageFactory new 
			getPropertiesFor: self objectId 
			ownProperties: false 
			accessorPropertiesOnly: false 
			generatePreview: true)
		wait: true.
	properties := ((resultHolder at: #result) at: #result) collect: [ :each | 
		CDTPPropertyDescriptor fromDictionary: each client: client ].
	^ properties