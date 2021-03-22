private - model creation
methodComment
	"Answer a string to be used as the method comment, enclosed in double-quotes"
	| typeString |

	^ String streamContents: [ :stream |
		stream
			tab; << '"'.
		self description ifNotNil: 
			[ stream << (self description copyReplaceAll: '"' with: '""'); cr ].
		self type ifNotNil: 
			[ typeString := 'type: ', self type.
			self items ifNotNil: [ :aDictionary |
				typeString := typeString, ' of: '.
				aDictionary keysAndValuesDo: [ :key :value |
					typeString := typeString, ' ', key, '(', value, ')' ] ].
			stream tab << typeString; cr ].
		self printFlagsOn: stream leadingTabCount: 1.
		self enum ifNotNil: [ :anArray |
			stream tab; << 'Enum: '.
			anArray 
				do: [ :each | stream << each ]
				separatedBy: [ stream << ', ' ].
			stream cr ].
		stream position > 2 ifTrue:
			[ stream position: stream position - 1 ].
		stream << '"' ].