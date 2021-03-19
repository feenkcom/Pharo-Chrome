json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #name to: #name.
		mapping mapAccessor: #type to: #type.
		mapping mapAccessor: #value to: #value.
		mapping mapAccessor: #valuePreview to: #valuePreview.
		mapping mapAccessor: #subtype to: #subtype.
		].
