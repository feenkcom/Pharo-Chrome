json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #name to: #name.
		mapping mapAccessor: #value to: #value.
		mapping mapAccessor: #writable to: #writable.
		mapping mapAccessor: #get to: #get.
		mapping mapAccessor: #set to: #set.
		mapping mapAccessor: #configurable to: #configurable.
		mapping mapAccessor: #enumerable to: #enumerable.
		mapping mapAccessor: #wasThrown to: #wasThrown.
		mapping mapAccessor: #isOwn to: #isOwn.
		mapping mapAccessor: #symbol to: #symbol.
		].
