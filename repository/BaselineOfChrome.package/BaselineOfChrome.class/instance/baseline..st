baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: 'ZincHTTPComponentsWebSocket' with: 
			[ spec 
				repository: 'github://feenkcom/zinc:v3.1.1-gt/repository';
				loads: #('WebSocket') ]. 
		spec 
			package: #'Chrome-Core' with: [
				spec requires: #('ZincHTTPComponentsWebSocket'). ];
			package: #'ChromeDevTools' with: [ 
				spec requires: #(#'Chrome-Core') ];
			package: #'ChromeDevToolsProtocol';
			package: #'Chrome-Tests-Core' with: [
				spec requires: #(#'Chrome-Core' ). ].
		spec 
			group: 'Core' with: #(#'Chrome-Core' #'ChromeDevTools' #'ChromeDevToolsProtocol');
			group: 'Tests' with: #(#'Chrome-Tests-Core' );
			group: 'all' with: #('Core' 'Tests' );
			group: 'default' with: #('all' ). ].
