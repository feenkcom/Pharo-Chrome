accessing
tableData
	"Extract the table data from the receiver (table).
	This method is simplistic and assumes:
	- No nested tables
	- Cell contents are always single strings"

	| rows cells |

	self assert: self isTable description: '#tableData may only be sent to <table> nodes'.

	^Array streamContents: [ :stream |
		rows := self findAllTags: 'tr'.
		rows do: [ :row |
			stream nextPut: (Array streamContents: [ :rowStream |
				cells := row findAllTags: #('td' 'th').
				cells do: [ :cell | | strings string |
					strings := (cell findAllStrings: true) collect: [ :each | each contents ].
					string := (' ' join: strings) trimBoth: [ :char | char isSeparator or: [ char isAlphaNumeric not ] ].
					rowStream nextPut: string ] ]) ] ].