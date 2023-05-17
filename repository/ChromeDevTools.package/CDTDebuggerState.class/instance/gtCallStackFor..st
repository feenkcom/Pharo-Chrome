ui
gtCallStackFor: aView
	<gtView>

	^ aView list 
		title: 'Call stack';
		priority: 15;
		items: [ self callFrames ]