json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #callCount to: #callCount.
		mapping mapAccessor: #detailed to: #detailed.
		mapping mapAccessor: #allowTriggeredUpdates to: #allowTriggeredUpdates.
		].
