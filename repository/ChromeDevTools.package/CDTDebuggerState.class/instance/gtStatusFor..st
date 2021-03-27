ui
gtStatusFor: aView
	<gtView>

	^ aView textEditor 
		title: 'Status';
		priority: 10;
		aptitude: BrGlamorousCodeEditorAptitude;
		text: [ self statusString asRopedText ]