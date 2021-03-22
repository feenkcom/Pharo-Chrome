private - model creation
changesInclude: className method: selector in: rbNamespace

	^ rbNamespace changes changes
		detect: [ :each | each class = RBAddMethodChange and:
					[ each changeClassName = className and:
					[ each selector = selector ] ] ]
		ifFound: [ true ]
		ifNone: [ false ]