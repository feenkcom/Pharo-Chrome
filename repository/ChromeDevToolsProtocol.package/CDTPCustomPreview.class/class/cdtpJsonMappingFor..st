json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #header to: #header.
		mapping mapAccessor: #bodyGetterId to: #bodyGetterId.
		].
