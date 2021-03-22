private - model creation
referenceClassFor: referenceName
	"Answer the class name in the receiver's ref attribute, or nil"
	| components clsName |

	clsName := referenceName
		ifNil: [ nil ]
		ifNotNil: [ 
			components := $. split: referenceName.
			components size = 1 ifTrue: 
				[ (rootDefinition optionAt: #classNamePrefix), components first capitalized ]
			ifFalse: [ (rootDefinition optionAt: #classNamePrefix), components last capitalized ] ].
	^ clsName ifNotNil: [ :name | name asSymbol ]