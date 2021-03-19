json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #scriptId to: #scriptId.
		mapping mapAccessor: #executionContextId to: #executionContextId.
		mapping mapAccessor: #objectGroup to: #objectGroup.
		mapping mapAccessor: #silent to: #silent.
		mapping mapAccessor: #includeCommandLineAPI to: #includeCommandLineAPI.
		mapping mapAccessor: #returnByValue to: #returnByValue.
		mapping mapAccessor: #generatePreview to: #generatePreview.
		mapping mapAccessor: #awaitPromise to: #awaitPromise.
		].
