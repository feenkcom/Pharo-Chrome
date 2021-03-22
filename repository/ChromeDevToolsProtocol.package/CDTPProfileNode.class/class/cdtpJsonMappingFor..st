json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #id to: #id.
		mapping mapAccessor: #callFrame to: #callFrame.
		mapping mapAccessor: #hitCount to: #hitCount.
		mapping mapAccessor: #children to: #children.
		mapping mapAccessor: #deoptReason to: #deoptReason.
		mapping mapAccessor: #positionTicks to: #positionTicks.
		].
