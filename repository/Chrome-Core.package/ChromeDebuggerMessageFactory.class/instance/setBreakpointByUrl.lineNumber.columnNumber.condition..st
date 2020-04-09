messages
setBreakpointByUrl: urlRegexString lineNumber: lineNumber columnNumber: columnNumber condition: conditionString

	^ { #method -> 'Debugger.setBreakpointByUrl'.
		#params -> { 
			#urlRegex -> urlRegexString.
			#lineNumber -> lineNumber.
			#columnNumber -> columnNumber.
			#condition -> conditionString } asDictionary } asDictionary.