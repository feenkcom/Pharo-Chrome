json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #location to: #location.
		mapping mapAccessor: #targetCallFrames to: #targetCallFrames.
		].
