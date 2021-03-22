model creation
typeProperties
	"Answer the properties of the receiver.
	If the properties attribute is set, use that, otherwise derive the properties from the type and items information." 

	self properties ifNotNil: [ 
		self assert: type = #object.
		self assert: items isNil.
		^ self properties ].

	"Primitive types are a single property of that type"
	(#(string integer number object) includes: self type) ifTrue: 
		[ ^ { CDTImporterProperty new
			name: #value;
			type: self type;
			description: self description;
			rootDefinition: rootDefinition;
			parent: self } ].

	"Handle array of type <items first>"
	self type = #array ifTrue: 
		[ (items isNil or: [ items size ~= 1 ]) ifTrue:
			[ self error: 'Unexpected items' ].
		(items includesKey: #type) ifTrue:
			[ ^ { CDTImporterProperty new
				name: #value;
				type: (self items at: #type);
				description: self description;
				rootDefinition: rootDefinition;
				parent: self } ]
		ifFalse: [ (items includesKey: #'$ref') ifTrue: 
			[ ^ { CDTImporterProperty new
				name: #value;
				ref: (self items at: #'$ref');
				description: self description;
				rootDefinition: rootDefinition;
				parent: self } ] ] ].

	self error: 'Unexpected items'.
