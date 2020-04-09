ui
gtSourceCodeFor: aView
	<gtView>

	^ aView textEditor 
		title: 'Source';
		priority: 10;
		text: [ self sourceText ];
		updateWhen: NodeJSDebuggerStateChange in: [ self announcer ]