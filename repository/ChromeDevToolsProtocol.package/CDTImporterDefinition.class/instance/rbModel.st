model creation
rbModel

	^ self optionAt: #rbNamespace ifAbsentPut: [ RBNamespace new ].
