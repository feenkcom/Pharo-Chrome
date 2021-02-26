ui
gtStatusFor: aView
	<gtView>

	^ aView textEditor 
		title: 'Status';
		priority: 10;
		look: BrGlamorousCodeEditorLook;
		text: [ self statusString asRopedText ]