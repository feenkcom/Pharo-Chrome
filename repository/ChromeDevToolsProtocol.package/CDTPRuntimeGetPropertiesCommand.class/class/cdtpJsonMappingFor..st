json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #objectId to: #objectId.
		mapping mapAccessor: #ownProperties to: #ownProperties.
		mapping mapAccessor: #accessorPropertiesOnly to: #accessorPropertiesOnly.
		mapping mapAccessor: #generatePreview to: #generatePreview.
		].
