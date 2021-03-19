model creation
defineModel
	| className parameters |

	"For a Type, the properties of the type may be defined by its type (and optional items) or the properties attribute."
	parameters := self typeProperties.

	className := self classNameFor: self id.

	self updateClassNamed: className superclass: CDTPType.
	self addClassNamed: className comment: self description.
	"Parameters and properties are implemented the same way"
	self defineParametersAsInstVars: parameters in: className.
	self defineParametersAsMethods: parameters in: className.
	self addJsonMapping: parameters in: className.