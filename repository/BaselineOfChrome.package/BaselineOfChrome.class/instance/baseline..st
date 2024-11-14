baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'ZincHTTPComponentsWebSocket' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.59/repository' ].

		spec package: 'Chrome-Core' with: [
			spec requires: #(#ZincHTTPComponentsWebSocket) ].
		spec package: 'ChromeDevTools' with: [
			spec requires: #(#'Chrome-Core') ].
		spec package: 'ChromeDevToolsProtocol'.
		spec package: 'Chrome-Tests-Core' with: [
			spec requires: #(#'Chrome-Core') ].
	]