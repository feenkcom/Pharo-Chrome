private - accessing
resultValue: resultHolder
	"Answer the value contained in the supplied result dictoinary"
	| resultDictionary |
	
	resultDictionary := (resultHolder at: #result) at: #result.
	resultDictionary at: #value
		ifPresent: [ :value | ^value ].
	"Map undefined to nil for now"
	(resultDictionary at: #type) = 'undefined' ifTrue: 
		[ ^nil ].
	self error: 'Unknown result type'