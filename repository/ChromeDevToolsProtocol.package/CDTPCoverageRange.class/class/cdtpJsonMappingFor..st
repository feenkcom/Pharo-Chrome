json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #startOffset to: #startOffset.
		mapping mapAccessor: #endOffset to: #endOffset.
		mapping mapAccessor: #count to: #count.
		].
