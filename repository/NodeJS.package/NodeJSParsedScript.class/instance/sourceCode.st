accessing
sourceCode 

	^ source ifNil: [ source := debugger getScriptSource: self scriptId ]