accessing
firstPreviewProperty
	| preview properties |

	preview := rawData at: #preview ifAbsent: [ ^ nil ].
	properties := preview at: #properties ifAbsent: [ ^ nil ].
	^ properties
		ifEmpty: [ nil ]
		ifNotEmpty: [ properties first ]