json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #type to: #type.
		mapping mapAccessor: #subtype to: #subtype.
		mapping mapAccessor: #description to: #description.
		mapping mapAccessor: #overflow to: #overflow.
		mapping mapAccessor: #properties to: #properties.
		mapping mapAccessor: #entries to: #entries.
		].
