json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #lineNumber to: #lineNumber.
		mapping mapAccessor: #url to: #url.
		mapping mapAccessor: #urlRegex to: #urlRegex.
		mapping mapAccessor: #scriptHash to: #scriptHash.
		mapping mapAccessor: #columnNumber to: #columnNumber.
		mapping mapAccessor: #condition to: #condition.
		].
