instance creation
fromDictionary: aDictionary client: client
	| instance |

	aDictionary ifNil: [ ^ nil ].
	instance := self new client: client.
	aDictionary keysAndValuesDo: [ :key :value |
		instance
			perform: (key, ':') asSymbol
			with: value ].
	^ instance.