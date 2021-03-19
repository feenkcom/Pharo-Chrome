json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #nodes to: #nodes.
		mapping mapAccessor: #startTime to: #startTime.
		mapping mapAccessor: #endTime to: #endTime.
		mapping mapAccessor: #samples to: #samples.
		mapping mapAccessor: #timeDeltas to: #timeDeltas.
		].
