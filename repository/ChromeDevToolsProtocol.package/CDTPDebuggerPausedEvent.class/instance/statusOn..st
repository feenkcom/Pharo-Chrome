ui
statusOn: aStream

	aStream
		<< 'Hit Breakpoints:';
		cr.
	self hitBreakpoints do: [ :bp |
		aStream
			print: bp;
			cr ].
	aStream
		cr; cr;
		<< 'Reason: ';
		print: self reason; cr;
		cr;
		<< 'Call Frames:'; cr;
		cr.
	self callFrames do: [ :callFrame |
		callFrame statusOn: aStream ].