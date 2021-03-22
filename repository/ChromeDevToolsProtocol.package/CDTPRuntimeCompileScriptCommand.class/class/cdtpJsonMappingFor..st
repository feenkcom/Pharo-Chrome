json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #expression to: #expression.
		mapping mapAccessor: #sourceURL to: #sourceURL.
		mapping mapAccessor: #persistScript to: #persistScript.
		mapping mapAccessor: #executionContextId to: #executionContextId.
		].
