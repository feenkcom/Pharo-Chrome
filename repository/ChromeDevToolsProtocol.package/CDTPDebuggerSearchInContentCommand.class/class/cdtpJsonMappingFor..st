json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #scriptId to: #scriptId.
		mapping mapAccessor: #query to: #query.
		mapping mapAccessor: #caseSensitive to: #caseSensitive.
		mapping mapAccessor: #isRegex to: #isRegex.
		].
