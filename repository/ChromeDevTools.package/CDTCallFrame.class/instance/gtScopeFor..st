ui
gtScopeFor: aView
	<gtView>

	^ aView list
		title: 'Scope Chain';
		priority: 15;
		items: [ self scopeChain ];
		itemText: [ :scope | 
			scope nameOrNil
				ifNil: [ scope type ]
				ifNotNil: [ scope type, ': ', scope name ] ]