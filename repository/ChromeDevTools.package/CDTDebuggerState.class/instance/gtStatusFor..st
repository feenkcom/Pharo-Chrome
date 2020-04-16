ui
gtStatusFor: aView
	<gtView>

	^ aView textEditor 
		title: 'Status';
		priority: 10;
		look: BrGlamorousCodeEditorLook new;
		text: [ self statusString asRopedText ]