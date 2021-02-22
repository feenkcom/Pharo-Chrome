ui
gtScopeFor: aView
	<gtView>

	^ aView forward
		title: 'Scope Chain';
		priority: 15;
		object: [ self scopeDictionary ];
		view: #gtItemsFor: