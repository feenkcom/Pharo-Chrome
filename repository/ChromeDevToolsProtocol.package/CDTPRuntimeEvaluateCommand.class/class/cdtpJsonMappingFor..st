json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #expression to: #expression.
		mapping mapAccessor: #objectGroup to: #objectGroup.
		mapping mapAccessor: #includeCommandLineAPI to: #includeCommandLineAPI.
		mapping mapAccessor: #silent to: #silent.
		mapping mapAccessor: #contextId to: #contextId.
		mapping mapAccessor: #returnByValue to: #returnByValue.
		mapping mapAccessor: #generatePreview to: #generatePreview.
		mapping mapAccessor: #userGesture to: #userGesture.
		mapping mapAccessor: #awaitPromise to: #awaitPromise.
		mapping mapAccessor: #throwOnSideEffect to: #throwOnSideEffect.
		mapping mapAccessor: #timeout to: #timeout.
		mapping mapAccessor: #disableBreaks to: #disableBreaks.
		mapping mapAccessor: #replMode to: #replMode.
		mapping mapAccessor: #allowUnsafeEvalBlockedByCSP to: #allowUnsafeEvalBlockedByCSP.
		mapping mapAccessor: #uniqueContextId to: #uniqueContextId.
		].
