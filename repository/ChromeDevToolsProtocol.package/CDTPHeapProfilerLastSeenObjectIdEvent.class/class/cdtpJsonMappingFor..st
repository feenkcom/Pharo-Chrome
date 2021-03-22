json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #lastSeenObjectId to: #lastSeenObjectId.
		mapping mapAccessor: #timestamp to: #timestamp.
		].
