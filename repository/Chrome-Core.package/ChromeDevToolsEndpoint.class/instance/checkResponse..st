private
checkResponse: responseDictionary

	(responseDictionary includesKey: 'error') ifTrue:
		[ self error: 'error response. to be handled.' ].
	^true