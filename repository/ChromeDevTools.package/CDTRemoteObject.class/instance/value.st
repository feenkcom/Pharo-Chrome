accessing
value

	^ rawData at: #value ifAbsent: 
		[ self firstPreviewProperty
			ifNotNil: [ :properties | properties at: #value ifAbsent: [ nil ] ]
			ifNil: [ nil ]]