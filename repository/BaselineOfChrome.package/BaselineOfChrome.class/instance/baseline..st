baseline
baseline: spec
	<baseline>

	self error: 'The master branch is deprecated, use the main branch'.

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: 'ZincHTTPComponentsWebSocket' with: 
			[ spec 
				repository: 'github://feenkcom/zinc:v3.1.1-gt/repository' ]. 
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
