ui
gtStepIntoActionFor: anAction
	<gtAction>
	^ anAction button
		label: 'Into';
		priority: 4;
		action: [ :aButton | self stepInto ]