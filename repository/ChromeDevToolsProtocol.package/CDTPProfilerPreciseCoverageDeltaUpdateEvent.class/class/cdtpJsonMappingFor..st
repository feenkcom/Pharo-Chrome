json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #timestamp to: #timestamp.
		mapping mapAccessor: #occassion to: #occassion.
		mapping mapAccessor: #result to: #result.
		].
