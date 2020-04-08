ui
gtSourceCodeFor: aView

	self hasSourceCode ifFalse: [ ^ aView empty ].
	^ aView textEditor 
		title: 'Source';
		priority: 10;
		text: [ self sourceText ]