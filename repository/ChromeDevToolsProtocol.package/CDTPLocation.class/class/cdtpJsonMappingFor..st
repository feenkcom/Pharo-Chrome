json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #scriptId to: #scriptId.
		mapping mapAccessor: #lineNumber to: #lineNumber.
		mapping mapAccessor: #columnNumber to: #columnNumber.
		].
