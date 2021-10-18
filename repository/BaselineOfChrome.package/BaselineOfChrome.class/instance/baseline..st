baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'ZincHTTPComponentsWebSocket' with: [
				spec repository: 'github://feenkcom/zinc/repository' ].
		spec 
			package: #'Chrome-Core' with: [
				spec requires: #('ZincHTTPComponentsWebSocket' ). ];
			package: #ChromeDevTools with: [
				spec requires: #(#'Chrome-Core' ). ];
			package: #ChromeDevToolsProtocol;
			package: #'Chrome-Tests-Core' with: [
				spec requires: #(#'Chrome-Core' ). ]. ].
