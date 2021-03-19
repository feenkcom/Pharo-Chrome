json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #breakOnAsyncCall to: #breakOnAsyncCall.
		mapping mapAccessor: #skipList to: #skipList.
		].
