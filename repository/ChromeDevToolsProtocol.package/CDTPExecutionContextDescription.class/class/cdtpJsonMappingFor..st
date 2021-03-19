json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #id to: #id.
		mapping mapAccessor: #origin to: #origin.
		mapping mapAccessor: #name to: #name.
		mapping mapAccessor: #uniqueId to: #uniqueId.
		mapping mapAccessor: #auxData to: #auxData.
		].
