accessing
value: aString
	"Call frame identifier.
	type: string"
	| dict |

	value := aString.
	dict := STONJSON fromString: value.
	ordinal := dict at: #ordinal.
	injectedScriptId := dict at: #injectedScriptId.
