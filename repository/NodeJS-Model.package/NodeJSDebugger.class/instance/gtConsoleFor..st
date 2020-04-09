ui
gtConsoleFor: aView
	<gtView>

	^ aView textEditor 
		title: 'Console';
		priority: 10;
		text: [ self console asRopedText ];
		updateWhen: NodeJSDebuggerStateChange in: [ self announcer ]