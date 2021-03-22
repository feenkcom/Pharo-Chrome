as yet unclassified
gtDomainsFor: aView
	<gtView>

	self domains ifNil: [ ^ aView empty ].
	^ aView list 
		title: 'Domains';
		priority: 10;
		items: [ self domains ];
		itemText: [ :item | item domain ]