defaults
defaultExecutableLocationIfNone: aBlock

	^ self defaultExecutableLocations
		  detect: [ :each | each asFileReference exists ]
		  ifNone: aBlock