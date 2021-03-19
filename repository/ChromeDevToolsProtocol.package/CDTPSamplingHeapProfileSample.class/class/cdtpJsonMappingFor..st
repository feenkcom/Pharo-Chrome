json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #size to: #size.
		mapping mapAccessor: #nodeId to: #nodeId.
		mapping mapAccessor: #ordinal to: #ordinal.
		].
