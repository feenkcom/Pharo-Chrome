json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #prototypeObjectId to: #prototypeObjectId.
		mapping mapAccessor: #objectGroup to: #objectGroup.
		].
