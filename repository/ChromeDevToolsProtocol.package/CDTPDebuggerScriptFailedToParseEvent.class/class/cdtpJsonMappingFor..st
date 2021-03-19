json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #scriptId to: #scriptId.
		mapping mapAccessor: #url to: #url.
		mapping mapAccessor: #startLine to: #startLine.
		mapping mapAccessor: #startColumn to: #startColumn.
		mapping mapAccessor: #endLine to: #endLine.
		mapping mapAccessor: #endColumn to: #endColumn.
		mapping mapAccessor: #executionContextId to: #executionContextId.
		mapping mapAccessor: #hash to: #hash.
		mapping mapAccessor: #executionContextAuxData to: #executionContextAuxData.
		mapping mapAccessor: #sourceMapURL to: #sourceMapURL.
		mapping mapAccessor: #hasSourceURL to: #hasSourceURL.
		mapping mapAccessor: #isModule to: #isModule.
		mapping mapAccessor: #length to: #length.
		mapping mapAccessor: #stackTrace to: #stackTrace.
		mapping mapAccessor: #codeOffset to: #codeOffset.
		mapping mapAccessor: #scriptLanguage to: #scriptLanguage.
		mapping mapAccessor: #embedderName to: #embedderName.
		].
