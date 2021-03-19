json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #callFrames to: #callFrames.
		mapping mapAccessor: #reason to: #reason.
		mapping mapAccessor: #data to: #data.
		mapping mapAccessor: #hitBreakpoints to: #hitBreakpoints.
		mapping mapAccessor: #asyncStackTrace to: #asyncStackTrace.
		mapping mapAccessor: #asyncStackTraceId to: #asyncStackTraceId.
		mapping mapAccessor: #asyncCallStackTraceId to: #asyncCallStackTraceId.
		].
