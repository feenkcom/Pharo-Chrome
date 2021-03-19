private - model creation
addReturnTypesIn: className
	"Add return type information to the model"
	| methodSource  rbModel rbClass actualClass currentSource |

	returns ifNil: [ ^ self ].

	methodSource := String streamContents: [ :stream |
		stream 
			<< 'returnTypes';
			tab; << '"Answer a descriptor of the expected return type(s)"'; cr;
			cr;
			tab; << '^ {'; cr.
		returns do: [ :return |
			return asReturnType storeOn: stream ].
		stream 
			tab; << '}'
		 ].

	rbModel := rootDefinition rbModel.
	rbClass := rbModel classNamed: className.
	actualClass := self class environment at: className ifAbsent: [ nil ].
	currentSource := actualClass ifNotNil: 
		[ actualClass methodDict at: #returnTypes 
				ifPresent: [ :method | method sourceCode ]
				ifAbsent: [ '' ] ].

	methodSource = currentSource ifFalse: 
		[ rbModel
			compile: methodSource
			in: rbClass
			classified: #metadata ]