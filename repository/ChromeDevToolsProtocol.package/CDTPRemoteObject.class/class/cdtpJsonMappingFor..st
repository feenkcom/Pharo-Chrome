json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #type to: #type.
		mapping mapAccessor: #subtype to: #subtype.
		mapping mapAccessor: #className to: #className.
		mapping mapAccessor: #value to: #value.
		mapping mapAccessor: #unserializableValue to: #unserializableValue.
		mapping mapAccessor: #description to: #description.
		mapping mapAccessor: #objectId to: #objectId.
		mapping mapAccessor: #preview to: #preview.
		mapping mapAccessor: #customPreview to: #customPreview.
		].
