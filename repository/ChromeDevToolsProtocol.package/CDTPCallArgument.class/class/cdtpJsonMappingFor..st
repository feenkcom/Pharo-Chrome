json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #value to: #value.
		mapping mapAccessor: #unserializableValue to: #unserializableValue.
		mapping mapAccessor: #objectId to: #objectId.
		].
