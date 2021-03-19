private - model creation
changesInclude: className instanceVariable: instanceVariable in: rbNamespace

	^ rbNamespace changes changes
		detect: [ :each | each class = RBAddInstanceVariableChange and:
					[ each changeClassName = className and:
					[ each variable = instanceVariable ] ] ]
		ifFound: [ true ]
		ifNone: [ false ]