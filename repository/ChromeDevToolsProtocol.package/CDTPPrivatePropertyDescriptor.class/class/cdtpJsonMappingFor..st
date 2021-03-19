json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #name to: #name.
		mapping mapAccessor: #value to: #value.
		mapping mapAccessor: #get to: #get.
		mapping mapAccessor: #set to: #set.
		].
