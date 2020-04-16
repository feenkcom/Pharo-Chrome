ui
gtResumeActionFor: anAction
	<gtAction>
	^ anAction button
		label: 'Resume';
		priority: 3;
		action: [ :aButton | self resume ]