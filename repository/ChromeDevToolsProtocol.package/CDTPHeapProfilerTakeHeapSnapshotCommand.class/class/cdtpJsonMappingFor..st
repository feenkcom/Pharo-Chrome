json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #reportProgress to: #reportProgress.
		mapping mapAccessor: #treatGlobalObjectsAsRoots to: #treatGlobalObjectsAsRoots.
		].
