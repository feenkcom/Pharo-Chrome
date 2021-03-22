private - model creation
addClassNamed: className comment: commentString
	"If a comment string is available and the class doesn't have an existing comment, add one"
	| rbModel rbClass |

	(commentString isNil or: [ commentString isEmpty ]) ifTrue: [ ^ self ].

	rbModel := rootDefinition optionAt: #rbNamespace ifAbsentPut: [ RBNamespace new ].
	rbClass := rbModel classNamed: className.

	rbClass comment = commentString ifTrue: [ ^ self ].
	
	rbModel comment: commentString in: rbClass.

	^ rbClass