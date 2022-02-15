private
ensureLocationRequestor

	locationRequestor ifNotNil: [ ^ self ].

	locationRequestor := [ self locationRequestorLoop ] forkNamed:
		                     'Chrome Wait For Location HREF'