json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #exceptionId to: #exceptionId.
		mapping mapAccessor: #text to: #text.
		mapping mapAccessor: #lineNumber to: #lineNumber.
		mapping mapAccessor: #columnNumber to: #columnNumber.
		mapping mapAccessor: #scriptId to: #scriptId.
		mapping mapAccessor: #url to: #url.
		mapping mapAccessor: #stackTrace to: #stackTrace.
		mapping mapAccessor: #exception to: #exception.
		mapping mapAccessor: #executionContextId to: #executionContextId.
		].
