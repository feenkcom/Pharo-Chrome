json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #functionName to: #functionName.
		mapping mapAccessor: #ranges to: #ranges.
		mapping mapAccessor: #isBlockCoverage to: #isBlockCoverage.
		].
