json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #start to: #start.
		mapping mapAccessor: #end to: #end.
		mapping mapAccessor: #restrictToFunction to: #restrictToFunction.
		].
