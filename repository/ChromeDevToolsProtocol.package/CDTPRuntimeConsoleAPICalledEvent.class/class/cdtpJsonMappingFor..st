json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #type to: #type.
		mapping mapAccessor: #args to: #args.
		mapping mapAccessor: #executionContextId to: #executionContextId.
		mapping mapAccessor: #timestamp to: #timestamp.
		mapping mapAccessor: #stackTrace to: #stackTrace.
		mapping mapAccessor: #context to: #context.
		].
