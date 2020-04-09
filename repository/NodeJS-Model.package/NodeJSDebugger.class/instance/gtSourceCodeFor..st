ui
gtSourceCodeFor: aView
	<gtView>

	^ aView textEditor 
		title: 'Source';
		priority: 10;
		text: [ self sourceText ];
		styler: JSParser gtStyler;
		look: BrGlamorousCodeEditorLook new;
		updateWhen: NodeJSDebuggerPaused in: [ self announcer ]