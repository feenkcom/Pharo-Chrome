ui
gtConsoleFor: aView
	<gtView>

	^ aView textEditor 
		title: 'Console';
		priority: 10;
		text: [ self console asRopedText ];
		updateWhen: CDTDebuggerConsoleUpdated in: [ self announcer ]