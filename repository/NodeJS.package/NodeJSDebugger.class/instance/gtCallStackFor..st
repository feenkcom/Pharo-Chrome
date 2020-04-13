ui
gtCallStackFor: aView
	<gtView>

	^ aView list
		title: 'Call Stack';
		priority: 10;
		items: [ self callFrames ];
		updateWhen: NodeJSDebuggerPaused in: [ self announcer ]