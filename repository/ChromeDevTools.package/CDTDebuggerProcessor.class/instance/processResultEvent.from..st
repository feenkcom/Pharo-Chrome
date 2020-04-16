messages
processResultEvent: aDictionary from: aMessageDictionary

	aDictionary
		at: #debuggerId
		ifPresent: [ :id | self debugger debuggerId: id ]