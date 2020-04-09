ui
gtSourceCodeFor: aView
	<gtView>

	self hasSourceCode ifFalse: [ ^ aView empty ].
	^ aView textEditor 
		title: 'Source';
		priority: 10;
		styler: JSParser gtStyler;
		look: BrGlamorousCodeEditorLook new;
		text: [ self sourceText ]