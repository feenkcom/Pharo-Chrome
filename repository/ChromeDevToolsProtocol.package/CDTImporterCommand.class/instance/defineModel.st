private - model creation
defineModel
	| className |

	className := self classNameFor: self name.

	self updateClassNamed: className superclass: CDTPCommand.
	self addClassNamed: className comment: self classComment.
	self defineParametersAsInstVars: self parameters in: className.
	self defineParametersAsMethods: self parameters in: className.
	self addJsonMapping: self parameters in: className.
	self addReturnTypesIn: className.