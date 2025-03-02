private
checkResponse: responseDictionary

	(responseDictionary includesKey: 'error') ifTrue:
		[ self error: 'looks like bad response' ].
	^true