defaults
defaultExecutableLocations

	| possiblePaths possibleSuffixes |
	possiblePaths := { 
		                 (Smalltalk os environment
			                  at: 'ProgramFiles'
			                  ifAbsent: [ 'C:\Program Files' ]).
		                 (Smalltalk os environment
			                  at: 'ProgramFiles(x86)'
			                  ifAbsent: [ 'C:\Program Files (x86)' ]).
		                 (Smalltalk os environment
			                  at: 'LocalAppData'
			                  ifAbsent: [ nil ]) }.
	possiblePaths := possiblePaths reject: #isNil.

	possibleSuffixes := #( 'Google\Chrome\Application\chrome.exe'
	                       'Google\Application\chrome.exe' ).

	^ possiblePaths
		  flatCollect: [ :aPath | 
			  possibleSuffixes collect: [ :aSuffix | aPath , '\' , aSuffix ] ]
		  as: Array