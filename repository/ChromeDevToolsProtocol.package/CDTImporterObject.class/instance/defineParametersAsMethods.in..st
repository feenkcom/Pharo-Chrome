private - model creation
defineParametersAsMethods: anArray in: className
	"Ensure the class has the instance variables as specified by anArray"
	| rbModel rbClass actualClass currentGetterSource currentSetterSource getterSource setterSource |

	anArray ifNil: [ ^ self ].
	rbModel := rootDefinition rbModel.
	rbClass := rbModel classNamed: className.
	actualClass := self class environment at: className ifAbsent: [ nil ].

	anArray do: [ :parameter |
		actualClass ifNotNil: 
			[ currentGetterSource := actualClass methodDict at: parameter name asSymbol 
				ifPresent: [ :method | method sourceCode ]
				ifAbsent: [ '' ].
			currentSetterSource := actualClass methodDict at: (parameter name,':') asSymbol 
				ifPresent: [ :method | method sourceCode ]
				ifAbsent: [ '' ] ].
		getterSource := parameter getMethodSource.
		setterSource := parameter setMethodSource.

		getterSource = currentGetterSource ifFalse:
			[ rbModel
				compile: parameter getMethodSource
				in: rbClass
				classified: #accessing ].
		setterSource = currentSetterSource ifFalse:
			[ rbModel 
				compile: parameter setMethodSource 
				in: rbClass 
				classified: #accessing ] ].
