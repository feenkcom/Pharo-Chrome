json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #type to: #type.
		mapping mapAccessor: #object to: #object.
		mapping mapAccessor: #name to: #name.
		mapping mapAccessor: #startLocation to: #startLocation.
		mapping mapAccessor: #endLocation to: #endLocation.
		].
