private - model creation
updateClassNamed: className superclass: superclass
	| rbModel rbAddClass |

	self class environment at: className asSymbol ifPresent: [ :cls | ^ cls ].

	rbModel := rootDefinition optionAt: #rbNamespace ifAbsentPut: [ RBNamespace new ].
	"Don't visit the same class twice"
	(rbModel classNamed: className) ifNotNil: [ ^ self ].

	rbAddClass := RBAddClassRefactoring
		model: rbModel
		addClass: className
		superclass: superclass name
		subclasses: {}
		category: #'ChromeDevToolsProtocol-Protocol'.
	rbAddClass primitiveExecute.
	^ rbAddClass