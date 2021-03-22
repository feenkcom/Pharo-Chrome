baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'ZincHTTPComponents' with: [
				spec
					loads: #('WebSocket' );
					repository: 'github://feenkcom/zinc:v3.0.3-gt/repository' ].
		spec 
			package: #'Chrome-Core' with: [
				spec requires: #('ZincHTTPComponents' ). ];
			package: #ChromeDevTools with: [
				spec requires: #(#'Chrome-Core' ). ];
			package: #ChromeDevToolsProtocol;
			package: #'Chrome-Tests-Core' with: [
				spec requires: #(#'Chrome-Core' ). ]. ].
