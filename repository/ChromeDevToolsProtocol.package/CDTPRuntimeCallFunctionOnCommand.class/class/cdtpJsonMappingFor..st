json - configuration
cdtpJsonMappingFor: aNeoJSONMapper

	super cdtpJsonMappingFor: aNeoJSONMapper.
	aNeoJSONMapper for: self do: [ :mapping |
		mapping mapAccessor: #functionDeclaration to: #functionDeclaration.
		mapping mapAccessor: #objectId to: #objectId.
		mapping mapAccessor: #arguments to: #arguments.
		mapping mapAccessor: #silent to: #silent.
		mapping mapAccessor: #returnByValue to: #returnByValue.
		mapping mapAccessor: #generatePreview to: #generatePreview.
		mapping mapAccessor: #userGesture to: #userGesture.
		mapping mapAccessor: #awaitPromise to: #awaitPromise.
		mapping mapAccessor: #executionContextId to: #executionContextId.
		mapping mapAccessor: #objectGroup to: #objectGroup.
		].
