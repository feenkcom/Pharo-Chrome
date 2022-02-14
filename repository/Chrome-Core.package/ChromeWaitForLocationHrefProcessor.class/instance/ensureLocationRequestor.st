private
ensureLocationRequestor

	locationRequestor ifNotNil: [ ^ self ].

	NonInteractiveTranscript stdout
		show: 'Started new location requestor for ';
		show: self href;
		cr.

	status := #waiting.
	locationRequestor := [ self locationRequestorLoop ] forkNamed:
		                     'Chrome Wait For Location HREF'