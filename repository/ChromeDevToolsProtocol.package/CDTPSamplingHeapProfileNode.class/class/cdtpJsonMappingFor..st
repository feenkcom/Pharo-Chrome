json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #callFrame to: #callFrame.
		mapping mapAccessor: #selfSize to: #selfSize.
		mapping mapAccessor: #id to: #id.
		mapping mapAccessor: #children to: #children.
		].
