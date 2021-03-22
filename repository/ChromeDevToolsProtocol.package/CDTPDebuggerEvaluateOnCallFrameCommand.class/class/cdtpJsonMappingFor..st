json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #callFrameId to: #callFrameId.
		mapping mapAccessor: #expression to: #expression.
		mapping mapAccessor: #objectGroup to: #objectGroup.
		mapping mapAccessor: #includeCommandLineAPI to: #includeCommandLineAPI.
		mapping mapAccessor: #silent to: #silent.
		mapping mapAccessor: #returnByValue to: #returnByValue.
		mapping mapAccessor: #generatePreview to: #generatePreview.
		mapping mapAccessor: #throwOnSideEffect to: #throwOnSideEffect.
		mapping mapAccessor: #timeout to: #timeout.
		].
