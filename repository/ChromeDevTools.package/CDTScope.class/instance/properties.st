accessing
properties 
	"Request the properties (variables) for the receiver"
	| resultHolder |

	properties ifNotNil: [ ^ properties ].
	resultHolder := debugger sendMessage: (ChromeRuntimeMessageFactory new 
			getPropertiesFor: self objectId 
			ownProperties: false 
			accessorPropertiesOnly: false 
			generatePreview: true)
		wait: true.
	properties := ((resultHolder at: #result) at: #result) collect: [ :each | 
		CDTPropertyDescriptor fromDictionary: each in: debugger ].
	^ properties