private - model creation
pharoTypeMap

	^ { 
		'boolean' -> #Boolean.
		'integer' -> #Integer.
		'number' -> #Number.
		'string' -> #String.
		'array' -> #Array.
		'object' -> (self referenceClassFor: ref) } asDictionary