printing
printOn: aStream

	process ifNil: [ ^super printOn: aStream ].
	process isRunning ifTrue:
		[ aStream nextPutAll: 'a Running AKGUnixSubprocess' ]
	ifFalse:
		[ self isSuccess ifTrue: 
				[ aStream nextPutAll: 'a Successfull AKGUnixSubprocess' ]
			ifFalse:
				[ aStream nextPutAll: 'an Unsuccessfull AKGUnixSubprocess' ] ].