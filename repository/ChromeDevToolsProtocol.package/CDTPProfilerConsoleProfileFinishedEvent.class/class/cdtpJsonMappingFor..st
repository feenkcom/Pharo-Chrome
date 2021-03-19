json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #id to: #id.
		mapping mapAccessor: #location to: #location.
		mapping mapAccessor: #profile to: #profile.
		mapping mapAccessor: #title to: #title.
		].
