ui
gtCallStackFor: aView
	<gtView>

	^ aView list 
		title: 'Call Stack';
		priority: 15;
		items: [ self callFrames ]