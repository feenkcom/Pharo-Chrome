private - model creation
defineParametersAsInstVars: anArray in: className
	"Ensure the class has the instance variables as specified by anArray"
	| rbModel existingInstVars newNames rbAddInstVar |

	anArray ifNil: [ ^ self ].
	existingInstVars := self class environment at: className 
		ifPresent: [ :class | class instVarNames ]
		ifAbsent: [ #() ].
	existingInstVars := existingInstVars asSet.

	newNames := anArray collect: [ :each | each name ] as: Set.
	rbModel := rootDefinition rbModel.
	(newNames difference: existingInstVars) do: [ :instVarName |
		rbAddInstVar := RBAddInstanceVariableRefactoring
			model: rbModel variable: instVarName class: className.
		(self changesInclude: className instanceVariable: instVarName in: rbModel) ifFalse:
			[ rbAddInstVar primitiveExecute ] ].