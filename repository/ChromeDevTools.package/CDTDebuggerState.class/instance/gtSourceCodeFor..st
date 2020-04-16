ui
gtSourceCodeFor: aView
	<gtView>

	^ aView forward
		title: 'Source';
		priority: 10;
		object: [ self callFrames first ];
		view: #gtSourceCodeFor: