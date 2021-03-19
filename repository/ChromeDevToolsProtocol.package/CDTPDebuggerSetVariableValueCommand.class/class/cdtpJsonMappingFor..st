json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #scopeNumber to: #scopeNumber.
		mapping mapAccessor: #variableName to: #variableName.
		mapping mapAccessor: #newValue to: #newValue.
		mapping mapAccessor: #callFrameId to: #callFrameId.
		].
