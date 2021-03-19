json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #promiseObjectId to: #promiseObjectId.
		mapping mapAccessor: #returnByValue to: #returnByValue.
		mapping mapAccessor: #generatePreview to: #generatePreview.
		].
