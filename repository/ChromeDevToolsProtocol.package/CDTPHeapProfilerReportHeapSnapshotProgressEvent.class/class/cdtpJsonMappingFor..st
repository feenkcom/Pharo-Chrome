json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #done to: #done.
		mapping mapAccessor: #total to: #total.
		mapping mapAccessor: #finished to: #finished.
		].
