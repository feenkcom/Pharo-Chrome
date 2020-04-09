ui
gtStepOutActionFor: anAction
	<gtAction>
	^ anAction button
		label: 'Out';
		priority: 5;
		action: [ :aButton | self stepOut ]