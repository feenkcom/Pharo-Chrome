json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #description to: #description.
		mapping mapAccessor: #callFrames to: #callFrames.
		mapping mapAccessor: #parent to: #parent.
		mapping mapAccessor: #parentId to: #parentId.
		].
