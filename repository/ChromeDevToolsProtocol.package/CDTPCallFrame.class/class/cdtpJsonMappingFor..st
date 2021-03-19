json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #callFrameId to: #callFrameId.
		mapping mapAccessor: #functionName to: #functionName.
		mapping mapAccessor: #functionLocation to: #functionLocation.
		mapping mapAccessor: #location to: #location.
		mapping mapAccessor: #url to: #url.
		mapping mapAccessor: #scopeChain to: #scopeChain.
		mapping mapAccessor: #this to: #this.
		mapping mapAccessor: #returnValue to: #returnValue.
		].
