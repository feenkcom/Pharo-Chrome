baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec project: 'Beacon' with: [ 
			spec
				className: #ConfigurationOfBeacon;
				versionString: #development;
				repository: 'http://smalltalkhub.com/mc/girba/Beacon/main/' ].
		spec baseline: 'AKGOSProcess' with: [ 
			spec
				repository: 'github://akgrant43/pharo-akgosprocess/mc' ].
		spec 
			package: #'Chrome-Core' with: [
				spec requires: #('Beacon' 'AKGOSProcess'). ];
			package: #'Chrome-Tests-Core' with: [
				spec requires: #(#'Chrome-Core' ). ].
		spec 
			group: 'Core' with: #(#'Chrome-Core' );
			group: 'Tests' with: #(#'Chrome-Tests-Core' );
			group: 'all' with: #('Core' 'Tests' );
			group: 'default' with: #('all' ). ].
