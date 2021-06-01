baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'ZincHTTPComponentsWebSocket' with: [
				spec repository: 'github://feenkcom/zinc:v3.1.1-gt/repository' ].
		spec 
			package: #'Chrome-Core' with: [
				spec requires: #('ZincHTTPComponentsWebSocket' ). ];
			package: #ChromeDevTools with: [
				spec requires: #(#'Chrome-Core' ). ];
			package: #ChromeDevToolsProtocol;
			package: #'Chrome-Tests-Core' with: [
				spec requires: #(#'Chrome-Core' ). ]. ].
