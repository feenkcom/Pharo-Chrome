defaults
defaultExecutableLocations

	| possiblePaths possibleSuffixes |
	possiblePaths := { 
		                 (Smalltalk os environment
			                  at: 'ProgramFiles'
			                  ifAbsent: [ nil ]).
		                 (Smalltalk os environment
			                  at: 'ProgramFiles(x86)'
			                  ifAbsent: [ nil ]).
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