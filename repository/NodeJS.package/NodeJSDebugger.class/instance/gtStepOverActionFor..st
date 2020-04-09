ui
gtStepOverActionFor: anAction
	<gtAction>
	^ anAction button
		label: 'Over';
		priority: 3;
		action: [ :aButton | self stepOver ]