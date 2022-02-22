defaults
ensuredExecutableLocation

	^ self defaultExecutableLocationIfNone: [ 
		  ChromeNotInstalled signal: (String streamContents: [ :aStream | 
				   aStream
					   nextPutAll:
						   'Cannot find Google Chrome at: ';
					   cr.
				   self defaultExecutableLocations
					   do: [ :eachString | 
						   aStream
							   nextPutAll: ' - ';
							   nextPutAll: eachString asString ]
					   separatedBy: [ aStream cr ] ]) ]