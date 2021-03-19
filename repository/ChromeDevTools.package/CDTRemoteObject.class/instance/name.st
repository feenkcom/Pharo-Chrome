accessing
name 

	^ self firstPreviewProperty
		ifNotNil: [ :properties | properties at: #name ifAbsent: [ nil ] ]
		ifNil: [ nil ]