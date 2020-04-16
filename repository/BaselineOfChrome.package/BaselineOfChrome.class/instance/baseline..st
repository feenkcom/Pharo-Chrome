baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: 'AKGOSProcess' with: [ 
			spec repository: 'github://akgrant43/pharo-akgosprocess/mc' ].
		spec baseline: 'ZincHTTPComponents' with: 
			[ spec 
				repository: 'github://svenvc/zinc';
				loads: #('WebSocket') ]. 
		spec 
			package: #'Chrome-Core' with: [
				spec requires: #('AKGOSProcess' 'ZincHTTPComponents'). ];
			package: #'ChromeDevTools' with: [ 
				spec requires: #(#'Chrome-Core') ];
			package: #'Chrome-Tests-Core' with: [
				spec requires: #(#'Chrome-Core' ). ].
		spec 
			group: 'Core' with: #(#'Chrome-Core' );
			group: 'Tests' with: #(#'Chrome-Tests-Core' );
			group: 'all' with: #('Core' 'Tests' );
			group: 'default' with: #('all' ). ].
