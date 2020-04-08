messages
processMessage: aMessageDictionary

	aMessageDictionary at: #result ifPresent: [ :result | 
		self processResultEvent: result from: aMessageDictionary ].
	aMessageDictionary at: #method ifPresent: [ :method |
		self processMethodEvent: method from: aMessageDictionary ].