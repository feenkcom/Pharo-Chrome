json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #scriptId to: #scriptId.
		mapping mapAccessor: #url to: #url.
		mapping mapAccessor: #functions to: #functions.
		].
