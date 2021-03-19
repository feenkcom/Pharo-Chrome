model creation
defineModel
	| className |

	className := self classNameFor: self name.

	self updateClassNamed: className superclass: CDTPEvent.
	self addClassNamed: className comment: self description.
	self defineParametersAsInstVars: self parameters in: className.
	self defineParametersAsMethods: self parameters in: className.
	self addJsonMapping: self parameters in: className.