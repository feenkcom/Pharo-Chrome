private - model creation
addJsonMapping: properties in: className
	"Add the JSON mapping method for the supplied class"
	| methodSource currentSourceString class rbModel rbClass |

properties ifNil: [ ^ self ].
	class := self class environment at: className 
		ifPresent: [ :cls | cls class ]
		ifAbsent: [ nil ].
	currentSourceString := class ifNotNil:
		[ class methodDict at: #cdtpJsonMappingFor:
				ifPresent: [ :method | method sourceCode ]
				ifAbsent: [ '' ] ]
	ifNil:
		[ '' ].

	methodSource := String streamContents: [ :stream |
		stream 
			<< 'cdtpJsonMappingFor: aNeoJSONMapper'; cr;
			cr;
			tab; << 'super cdtpJsonMappingFor: aNeoJSONMapper.'; cr;
			tab; << 'aNeoJSONMapper for: self do: [ :mapping |'; cr.
		properties do: [ :property |
			stream 
				tab; tab; << 'mapping mapAccessor: #';
				<< property name;
				<< ' to: #';
				<< property name;
				<< '.'; cr ].
		stream tab; tab; << '].'; cr ].

	methodSource = currentSourceString ifTrue: [ ^ self ].

	rbModel := rootDefinition rbModel.
	rbClass := rbModel classNamed: className, ' class'.
	rbModel
		compile: methodSource
		in: rbClass
		classified: #'json - configuration'.